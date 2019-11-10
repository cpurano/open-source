package su.jet.mng;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient; 
import com.mongodb.DB;
import com.mongodb.DBObject;
import com.mongodb.client.MongoDatabase;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;


import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

import java.util.ArrayList;
import java.util.List;

import java.util.regex.Pattern;

import javax.servlet.*;
import javax.servlet.http.*;

import org.bson.types.ObjectId;

public class MongoServlet extends HttpServlet {
    
    private static final String CONTENT_TYPE = "text/html; charset=UTF-8";    
    private MongoClient mClient = null;
    
    private DB db = null;
    private GridFS gridfs = null;
    private String mongoGridFSBucket = null;

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        String mongoHost = config.getInitParameter("MongoHost");
        String mongoPort = config.getInitParameter("MongoPort");
        String mongoDBName = config.getInitParameter("MongoDBName");
        mongoGridFSBucket = config.getInitParameter("MongoGridFSBucket");
        
        try{
                mClient = new MongoClient(mongoHost+":"+mongoPort);
                db = mClient.getDB(mongoDBName);
                
                if(mongoGridFSBucket==null || mongoGridFSBucket.equalsIgnoreCase("")){
                    gridfs = new GridFS(db);    
                }else{
                    gridfs = new GridFS(db, mongoGridFSBucket);    
                }
        }catch(Exception e){
        }
        
    }

    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws ServletException,
                                                           IOException {
        //response.setContentType(CONTENT_TYPE);
        //response.setCharacterEncoding("UTF8");
        
        String reqCp = request.getCharacterEncoding();
        
        String file_id = "";
        String year_id = "";
        String year_key = "";
        String date_key = "";
        
        InputStream inStream = null;
        OutputStream outStream = null;
        String mimeType = null;
        GridFSDBFile gfsFileOut = null;
        ArrayList gfsFileOutList = null;
        String message = null;
                
        try {
            
            file_id = request.getParameter("file_id");
            year_id = request.getParameter("year_id");
            year_key = request.getParameter("year_key");
            date_key = request.getParameter("date_key");
            
            if(file_id == null && year_key == null && date_key == null){
                //message = "Пустой запрос";
                message = "Empty query!";
                throw new Exception();
            }
            try{
                
                BasicDBObject query = new BasicDBObject();
                BasicDBObject queryTif = new BasicDBObject();
                BasicDBObject queryPdf = new BasicDBObject();
                
                if(file_id != null){
                    if(year_id != null){
                        queryTif.put("metadata.year_key", year_id+"_"+file_id);    
                    }else{
                        queryTif.put("metadata.doc_number", file_id);        
                    }
                }else{
                    if(year_key != null){
                        queryTif.put("metadata.year_key", year_key);
                    }else{
                        queryTif.put("metadata.date_key", date_key);
                    }
                }
                queryTif.put("metadata.is_main", 1);
                queryTif.put("Type", Pattern.compile(".*tif.*" , Pattern.CASE_INSENSITIVE));
                mimeType = "image/tiff";
                gfsFileOut = (GridFSDBFile) gridfs.findOne(queryTif);
                
                if(gfsFileOut == null){
                    if(file_id != null){
                        if(year_id != null){
                            queryPdf.put("metadata.year_key", year_id+"_"+file_id);    
                        }else{
                            queryPdf.put("metadata.doc_number", file_id);        
                        }
                    }else{
                        if(year_key != null){
                            queryPdf.put("metadata.year_key", year_key);
                        }else{
                            queryPdf.put("metadata.date_key", date_key);
                        }
                    }
                    
                    queryPdf.put("metadata.is_main", 1);
                    queryPdf.put("Type", Pattern.compile(".*pdf.*" , Pattern.CASE_INSENSITIVE));
                    mimeType = "application/pdf";
                    gfsFileOut = (GridFSDBFile) gridfs.findOne(queryPdf);
                }
                
                if(gfsFileOut == null){
                    if(file_id != null){
                        if(year_id != null){
                            query.put("metadata.year_key", year_id+"_"+file_id);    
                        }else{
                            query.put("metadata.doc_number", file_id);        
                        }
                    }else{
                        if(year_key != null){
                            query.put("metadata.year_key", year_key);
                        }else{
                            query.put("metadata.date_key", date_key);
                        }
                    }
                    
                    query.put("metadata.is_main", 1);
                    mimeType = "application/octet-stream";
                    gfsFileOut = (GridFSDBFile) gridfs.findOne(query);
                }
                
            }catch(Exception e){
                //message = "Файл не найден";
                message = "File not found!";
                throw e;
            }

            inStream = gfsFileOut.getInputStream();
        
            // gets MIME type of the file
            //mimeType = gfsFileOut.getContentType();
            //if (mimeType == null) {        
            //    mimeType = "application/octet-stream";
            //}
        
            // modifies response
            response.setContentType(mimeType);
            response.setContentLength((int) gfsFileOut.getLength());
         
         
            // -- определение имени файла                
            DBObject md = gfsFileOut.getMetaData();
            String fName1 = gfsFileOut.getFilename();
            String fName2 = null;
            try{
                String strFileExtension = "";
                            
                int intLastDotPosition = fName1.lastIndexOf(".");
                int intLastSlashPosition = fName1.lastIndexOf("/");
                
                if( intLastDotPosition > intLastSlashPosition ){
                    strFileExtension = fName1.substring(intLastDotPosition + 1);
                }
                
                String docNumber = (String) md.get("doc_number");
                String docDate = (String) md.get("doc_date");
                if(docDate.equalsIgnoreCase("null")){
                    
                }else{
                    docDate = "_от_" + docDate.substring(0, 10);
                }
                
                fName2 = docNumber + docDate + "." + strFileExtension;
            }catch(Exception e){
                fName2 = fName1;
            }
         
            fName2 = encodeStr(fName2, "Cp1251", "ISO-8859-1");
         
            // forces download
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"", fName2);
            response.setHeader(headerKey, headerValue);
         
            // obtains response's output stream
            outStream = response.getOutputStream();
             
            byte[] buffer = new byte[4096];
            int bytesRead = -1;
         
            while ((bytesRead = inStream.read(buffer)) != -1) {
                outStream.write(buffer, 0, bytesRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
            errResponse(response, message, e.getMessage());
        }finally{
            try{
                inStream.close();
                outStream.close();
                }
            catch(Exception ignore){}    
            mimeType = null;
            gfsFileOut = null;
        }
    }
    
    /*
     *  метод открывает пустое окно, если ссылка на сервлет открыта с параметром _blank оно самозакрывается
     */
    private void errResponse(HttpServletResponse resp, String message, String errMessage) throws IOException {
        try {
            resp.reset();
        }catch (IllegalStateException ignore) {}
        
        resp.setContentType(CONTENT_TYPE);
        resp.setCharacterEncoding("UTF8");
        
        PrintWriter out = resp.getWriter();
        out.println("<!doctype html>\n");
        out.println("<html>\n"); 
        out.println("<head>\n"); 
        out.println("<script src=\"http://code.jquery.com/jquery-1.9.1.js\"></script>\n"); 
        out.println("<script type=\"text/javascript\">\n"); 
        out.println("function funonload() {\n");     
        out.println("        this.close();\n");
        out.println("}\n");
        out.println(" </script>\n"); 
        out.println("<meta charset=\"UTF-8\">\n"); 
        out.println("</head>\n"); 
        //out.println("<body onload=\"funonload();\">\n");  
        out.println("<body>\n");  
        out.println("<p><font size=\"5\"><b>" + encodeStr("Файл не найден!", "UTF8", "ISO-8859-1") + "</b></font></p>");
        
        //"Cp1251" "ISO-8859-1" "UTF8"
        
        out.println("</body>\n"); 
        out.println("</html>");
    }
                
            

    private static final String ERROR_CONTENT_TYPE = "text/html; charset=UTF-8";
    private static final String ERROR_HEADER = "<head><title>Error</title></head>";
    
    static public String encodeStr(String src, String defpage ,String codepage){
      String answer="";
      try{
          answer= new String(src.getBytes(defpage), codepage);
      }catch (Exception e){
          answer=src;
      }
      return answer;
     }
    
    
}

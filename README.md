**Информационно-аналитическая система «Мониторинг текущей деятельности организации»** предназначена для формирования и визуализации аналитических показателей деятельности организации.

Основными целями развертывания системы могут быть:
- оценка эффективности деятельности организации по основным показателям;
- повышение прозрачности деятельности организации.

Среди ключевых возможностей информационно-аналитической системы можно выделить:
- Гибкая адаптация способов представления показателей под цели проекта;
- Возможность прикрепления и просмотра первичной документации по показателям;
- Доступ через веб-браузер;
- Сокращение этапов проектирования и разработки за счет использования специализированного ПО
- Roll-up и roll-down – быстрое перемещение на обобщенный /детализированный уровни данных по показателю.

Представленное решение реализовано на примере государственного органа власти – Счетная палата РФ с использованием открытых данных и позволяет увидеть ключевые ![результаты](documents/showcase.pdf) внедрения системы 

Пошаговая инструкция развертывания решения ![source](source) расположена ![документации](documents) в **Руководстве администратора**. 

**Система базируется на open source компонентах:**
- ядро системы реализовано на базе программного продукта Pentaho BI Community Edition;
-	серверная часть функционирует под управлением Apache Tomcat на операционной системе Ubuntu версии не ниже 14.04 LTS;
-	для хранения структурированных аналитических данных используется mpp DB Greenplum;
-	для хранения образов документов — документоориентированная СУБД MongoDB;
-	клиентская часть системы работает в интернет-браузерах (Internet Explorer, GoogleChrome). 

**Структура исходного кода:**

### home	   - конфигурационные файлы сервера Pentaho

- source\home\pentaho\server\pentaho-server\pentaho-solutions\system\common-ui\resources\themes\ruby\images\sp_logo.png   **-  логотип счетной палаты**
- source\home\pentaho\server\pentaho-server\pentaho-solutions\system\common-ui\resources\themes\ruby\globalRuby.css   **-  описание стиля, использующегося в системе**
- source\home\pentaho\server\pentaho-server\pentaho-solutions\system\pentaho.xml   **-  настроечный xml-файл**
- source\home\pentaho\server\pentaho-server\tomcat\webapps\pentaho\jsp\PUCLogin.jsp   **-  страница логина в систему**

### tables     - SQL скрипт создания и заполнения таблиц-справочников

- source\tables\tables.sql **- SQL скрипт создания и заполнения таблиц-справочников Auditor_Dir и ViolationGroups**


### dashboards - Информационные панели системы
  
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BC%D0%B5%D1%80%D0%BE%D0%BF%D1%80%D0%B8%D1%8F%D1%82%D0%B8%D0%B9.wcdf       **- панель "Детализация мероприятий"**
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BC%D0%B5%D1%80%D0%BE%D0%BF%D1%80%D0%B8%D1%8F%D1%82%D0%B8%D0%B9.cdfde      **- json файл для рендера панели "Детализация мероприятий"**
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BC%D0%B5%D1%80%D0%BE%D0%BF%D1%80%D0%B8%D1%8F%D1%82%D0%B8%D0%B9.wcdf       **- источники данных, и запросы для панели "Детализация мероприятий"**
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BF%D0%B8%D1%81%D0%B5%D0%BC.wcdf                                           **- панель "Детализация писем"**
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BF%D0%B8%D1%81%D0%B5%D0%BC.cdfde                                          **- json файл для рендера панели "Детализация писем"**
 - source\dashboards\greenplum\%D0%94%D0%B5%D1%82%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F+%D0%BF%D0%B8%D1%81%D0%B5%D0%BC.cda                                            **- источники данных, и запросы для панели "Детализация писем"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B9.wcdf             **- панель "Проведено КМ-ЭАМ/Направлено предписаний"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B9.cdfde            **- json файл для рендера панели "Проведено КМ-ЭАМ/Направлено предписаний"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B9.cda              **- источники данных, и запросы для панели "Проведено КМ-ЭАМ/Направлено предписаний"** 
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.wcdf **- панель "Проведено КМ-ЭАМ/Направлено представлений"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.cdfde **- json файл для рендера панели "Проведено КМ-ЭАМ/Направлено представлений"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D0%BF%D1%80%D0%B5%D0%B4%D1%81%D1%82%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9.cda  **- источники данных, и запросы для панели "Проведено КМ-ЭАМ/Направлено представлений"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9+%D0%A1%D0%9F.wcdf **- панель "Проведено КМ-ЭАМ/Направлено уведомлений СП"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9+%D0%A1%D0%9F.cdfde **- json файл для рендера панели "Проведено КМ-ЭАМ/Направлено уведомлений СП"**
 - source\dashboards\greenplum\%D0%9D%D0%B0%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%BE+%D1%83%D0%B2%D0%B5%D0%B4%D0%BE%D0%BC%D0%BB%D0%B5%D0%BD%D0%B8%D0%B9+%D0%A1%D0%9F.cda **- источники данных, и запросы для панели "Проведено КМ-ЭАМ/Направлено уведомлений СП"**
 - source\dashboards\greenplum\%D0%9E%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BE%D0%B2+%D0%BE%D1%85%D0%B2%D0%B0%D1%87%D0%B5%D0%BD%D0%BE.wcdf                                           **- панель "Проведено КМ-ЭАМ/Объектов охвачено"**
 - source\dashboards\greenplum\%D0%9E%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BE%D0%B2+%D0%BE%D1%85%D0%B2%D0%B0%D1%87%D0%B5%D0%BD%D0%BE.cdfde                                          **- json файл для рендера панели "Проведено КМ-ЭАМ/Объектов охвачено"**
 - source\dashboards\greenplum\%D0%9E%D0%B1%D1%8A%D0%B5%D0%BA%D1%82%D0%BE%D0%B2+%D0%BE%D1%85%D0%B2%D0%B0%D1%87%D0%B5%D0%BD%D0%BE.cda                                            **- источники данных, и запросы для панели "Проведено КМ-ЭАМ/Объектов охвачено"**
 - source\dashboards\greenplum\%D0%9F%D0%B8%D1%81%D0%B5%D0%BC+%D0%9F%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83+%D0%B8+%D0%9F%D1%80%D0%B5%D0%B7%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D1%83+%D0%A0%D0%A4.wcdf                                                                                                                                                              **- панель "Проведено КМ-ЭАМ/Писем Правительству и Президенту РФ"**
 - source\dashboards\greenplum\%D0%9F%D0%B8%D1%81%D0%B5%D0%BC+%D0%9F%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83+%D0%B8+%D0%9F%D1%80%D0%B5%D0%B7%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D1%83+%D0%A0%D0%A4.cdfde                                                                                                                                                                     **- json файл для рендера панели "Проведено КМ-ЭАМ/Писем Правительству и Президенту РФ"**
 - source\dashboards\greenplum\%D0%9F%D0%B8%D1%81%D0%B5%D0%BC+%D0%9F%D1%80%D0%B0%D0%B2%D0%B8%D1%82%D0%B5%D0%BB%D1%8C%D1%81%D1%82%D0%B2%D1%83+%D0%B8+%D0%9F%D1%80%D0%B5%D0%B7%D0%B8%D0%B4%D0%B5%D0%BD%D1%82%D1%83+%D0%A0%D0%A4.cda                                                                                                                                                                   **- источники данных, и запросы для панели "Проведено КМ-ЭАМ/Писем Правительству и Президенту РФ"**
 - source\dashboards\greenplum\%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%BE+%D0%9A%D0%9C-%D0%AD%D0%90%D0%9C.wcdf                                                     **- панель "Проведено КМ-ЭАМ"**
 - source\dashboards\greenplum\%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%BE+%D0%9A%D0%9C-%D0%AD%D0%90%D0%9C.cdfde                                                  **- json файл для рендера панели "Проведено КМ-ЭАМ"**
 - source\dashboards\greenplum\%D0%9F%D1%80%D0%BE%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%BE+%D0%9A%D0%9C-%D0%AD%D0%90%D0%9C.cda                                                       **- источники данных, и запросы для панели "Проведено КМ-ЭАМ"**
 - source\dashboards\greenplum\CheckViolate.wcdf                                                                                                                             **- панель "Анализ выявленных нарушений по количеству"**
 - source\dashboards\greenplum\CheckViolate.cdfde                                                                                                                              **- json файл для рендера панели "Анализ выявленных нарушений по количеству"**
 - source\dashboards\greenplum\CheckViolate.cda                                                                                                                                 **- источники данных, и запросы для панели "Анализ выявленных нарушений по количеству"**
 - source\dashboards\greenplum\Completed_Events_Detail.wcdf                                                                                                                     **- панель "Детализация факт.мероприятий"**
 - source\dashboards\greenplum\Completed_Events_Detail.cdfde                                                                                                                    **- json файл для рендера панели "Детализация факт.мероприятий"**
 - source\dashboards\greenplum\Completed_Events_Detail.cda                                                                                                                      **- источники данных, и запросы для панели "Детализация факт.мероприятий"**
 - source\dashboards\greenplum\Expert_drill.wcdf                                                                                                                                **- панель "Проведено экспертиз"**
 - source\dashboards\greenplum\Expert_drill.cdfde                                                                                                                               **- json файл для рендера панели "Проведено экспертиз"**
 - source\dashboards\greenplum\Expert_drill.cda                                                                                                                                 **- источники данных, и запросы для панели "Проведено экспертиз"**
 - source\dashboards\greenplum\Injunction_Detail.wcdf                                                                                                                           **- панель "Детализация предписаний"**
 - source\dashboards\greenplum\Injunction_Detail.cdfde                                                                                                                          **- json файл для рендера панели "Детализация предписаний"**
 - source\dashboards\greenplum\Injunction_Detail.cda                                                                                                                            **- источники данных, и запросы для панели "Детализация предписаний"**
 - source\dashboards\greenplum\Main_panel.wcdf                                                                                                                                  **- панель "Текущая деятельность СП"**
 - source\dashboards\greenplum\Main_panel.cdfde                                                                                                                                 **- json файл для рендера панели "Текущая деятельность СП"**
 - source\dashboards\greenplum\Main_panel.cda                                                                                                                                   **- источники данных, и запросы для панели "Текущая деятельность СП"**
 - source\dashboards\greenplum\Object_details.wcdf                                                                                                                              **- панель "Детализация объектов"**
 - source\dashboards\greenplum\Object_details.cdfde                                                                                                                             **- json файл для рендера панели "Детализация объектов"**
 - source\dashboards\greenplum\Object_details.cda                                                                                                                               **- источники данных, и запросы для панели "Детализация объектов"**
 - source\dashboards\greenplum\Plan_KM_EAM.wcdf                                                                                                                                 **- панель "Запланировано КМ-ЭАМ"**
 - source\dashboards\greenplum\Plan_KM_EAM.cdfde                                                                                                                                **- json файл для рендера панели "Запланировано КМ-ЭАМ"**
 - source\dashboards\greenplum\Plan_KM_EAM.cda                                                                                                                                  **- источники данных, и запросы для панели "Запланировано КМ-ЭАМ"**
 - source\dashboards\greenplum\Submission_Detail.wcdf                                                                                                                           **- панель "Детализация представлений"**
 - source\dashboards\greenplum\Submission_Detail.cdfde                                                                                                                          **- json файл для рендера панели "Детализация представлений"**
 - source\dashboards\greenplum\Submission_Detail.cda                                                                                                                            **- источники данных, и запросы для панели "Детализация представлений"**
 - source\dashboards\greenplum\Violation_Detail_Group.wcdf                                                                                                                      **- панель "Детализация нарушений по группам"**
 - source\dashboards\greenplum\Violation_Detail_Group.cdfde                                                                                                                     **- json файл для рендера панели "Детализация нарушений по группам"**
 - source\dashboards\greenplum\Violation_Detail_Group.cda                                                                                                                       **- источники данных, и запросы для панели "Детализация нарушений по группам"**
 - source\dashboards\greenplum\Violation_Detail_Org.wcdf                                                                                                                        **- панель "Детализация нарушений по организациям"** 
 - source\dashboards\greenplum\Violation_Detail_Org.cdfde                                                                                                                       **- json файл для рендера панели "Детализация нарушений по организациям"** 
 - source\dashboards\greenplum\Violation_Detail_Org.cda                                                                                                                         **- источники данных, и запросы для панели "Детализация нарушений по организациям"** 
 - source\dashboards\greenplum\Violation_Detail_Typ.wcdf                                                                                                                        **- панель "Детализация нарушений по статьям"** 
 - source\dashboards\greenplum\Violation_Detail_Typ.cdfde                                                                                                                       **- json файл для рендера панели "Детализация нарушений по статьям"** 
 - source\dashboards\greenplum\Violation_Detail_Typ.cda                                                                                                                         **- источники данных, и запросы для панели "Детализация нарушений по статьям"** 
 - source\dashboards\greenplum\ViolationSum.wcdf                                                                                                                                **- панель "Выявлено нарушений"** 
 - source\dashboards\greenplum\ViolationSum.cdfde                                                                                                                               **- json файл для рендера панели "Выявлено нарушений"** 
 - source\dashboards\greenplum\ViolationSum.cda                                                                                                                                 **- источники данных, и запросы для панели "Выявлено нарушений"** 
 - source\dashboards\greenplum\sp.jpg                                                                                                                                           **- логотип СП, используемый на панелях**

### MngSrv     - Java приложениение для доступа к MongoDB

 - source\MngSrv\MngSrv.jws	                                                                   **- файл приложения в формате** средства разработки Oracle JDeveloper(12.2.1.3.0)
 - source\MngSrv\MongoServlet\classes\su\jet\mng\MongoServlet.class                             **- откомпилированный класс MongoServlet**
 - source\MngSrv\MongoServlet\deploy\MongoServlet.war                                           **- финальная версия Java приложения MngSrv, предназначенная для размещения(deployment) на сервере приложений**
 - source\MngSrv\MongoServlet\lib\mongo-java-driver-3.9.1.jar                                  **- библиотека использующаяся в проекте, драйвер для MongoDB**
 - source\MngSrv\MongoServlet\lib\postgresql-42.2.5.jar                                         **- библиотека использующаяся в проекте, драйвер для PostreSQL (GreenPlum)
 - source\MngSrv\MongoServlet\public_html\WEB-INF\web.xml**                                       **- файл настроек веб-приложения(параметры подключения к MongoDB, описание  context-root (сетевого адреса) сервлета)**
 - source\MngSrv\MongoServlet\src\su\jet\mng\MongoServlet.java                                  **- исходный код сервлета в текстовом виде**
 - source\MngSrv\MongoServlet\MongoServlet.jpr                                                  **- файл проекта в формате средства разработки Oracle JDeveloper(12.2.1.3.0)**  

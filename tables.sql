CREATE TABLE core."Auditor_Dir"
(
  "Aud_Id" text,
  "Aud_Name" text,
  "Dir_Id" text,
  "Dir_Name" text
)
WITH (
  OIDS=FALSE
)
DISTRIBUTED RANDOMLY;
ALTER TABLE core."Auditor_Dir"
  OWNER TO gpadmin;


CREATE TABLE "ViolationGroups"
(
  "ViolationTypeCode" text,
  "ViolationGroupCode" integer,
  "ViolationGroupName" text
)
WITH (
  OIDS=FALSE
)
DISTRIBUTED RANDOMLY;
ALTER TABLE "ViolationGroups"
  OWNER TO gpadmin;


INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.16', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.101', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.15', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.28', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.48', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.55', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.6', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.91', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.97', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.12', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.9', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.5.5', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.3', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.19', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.60', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.22', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.44', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.6', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.6', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('999', 3, '������������� �������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.15', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.24', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.100', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.14', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.29', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.45', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.49', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.50', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.61', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.65', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.98', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.13', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.8', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.16', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.2', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.12', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.7', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.34', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.45', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.49', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.3.1', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.5', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.105', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.26', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.46', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.51', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.59', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.64', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.95', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.10', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.5', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.13', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.12', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.9', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.37', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.15', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.31', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.46', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.4', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('998', 2, '��� �������������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.2', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.1', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.106', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.18', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.30', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.47', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.5', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.54', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.63', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.9', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.11', 5, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.15', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.1', 6, '���������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.11', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.8', 1, '�������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.41', 7, '������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.1', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.41', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.47', 4, '����������');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.3', 5, '���������');


INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Agaptsov',  '��������.�.', 'prom', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� ��������������, ���������� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Roslyak',  '�������.�.', 'kom_hoz', '����������� �� ���������-������������� � ����������� ������������ � ������� ������� ������������ ����������� �������� ��������� ������ (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Men',  '������.�.', 'science', '����������� ������ ���������� ����� � �����');
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Manuylova',  '����������.�.', 'cost', '����������� �� ���������-������������� � ����������� ������������ � ������� ���������������� ����������� � �������� ����� ���������� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('ChistovaMedia',  '��������.�.', 'media', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� �����, �����������,  (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Shtogrin',  '������� �.�.', 'revenue', '����������� �� ���������- ������������� � ����������� ������������ � ������� ������������ � ���������� ������� ������������ �������' (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Bogomolov',  '����������.�.', 'transport', '����������� �� ���������- ������������� � ����������� ������������ � ������� �������� ������������ ������� �� ��������-�������� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Rokhmistrov',  '�����������.�.', 'contract', '����������� �� ���������-������������� � ����������� ������������ � ������� ������� ������������ ���������, ������� ��������� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Perchyan',  '�������.�.', 'credit', '����������� �� ���������- ������������� � ����������� ������������ � ������� ������ ������������ ����� ���������� ���������, ��������� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('ChistovaDefense',  '��������.�.', 'defense', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� ������������ ��� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Apparatus',  '���������  �', 'apparatus', '�������');
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Blinova',  '��������.�.', 'justice', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� ������������������� ���� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Katrenko',  '������ �.�.', 'sport', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� ���������� ��������, ����� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Zhambalnimbuyev',  '��������� �.', 'agriculture', '����������� �� ���������-������������� � ����������� ������������ � ������� �������� ������������ ������� �� ������ ����� (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Zhdankov',  '���������.�.', 'international', '����������� �� ���������-������������� � ����������� ������������ � ������� ���������������� ����������� � �������� ����� ��� (...)

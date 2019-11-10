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


INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.16', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.101', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.15', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.28', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.48', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.55', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.6', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.91', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.97', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.12', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.9', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.5.5', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.3', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.19', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.60', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.22', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.44', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.6', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.6', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('999', 3, 'Неэффективные расходы');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.15', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.24', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.100', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.14', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.29', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.45', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.49', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.50', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.61', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.65', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.98', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.13', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.8', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.16', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.2', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.12', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.7', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.34', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.45', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.49', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.3.1', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.5', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.105', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.26', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.46', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.51', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.59', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.64', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.95', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.10', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.5', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.13', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.12', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.9', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.37', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.15', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.31', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.46', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.4', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('998', 2, 'Вне классификации');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.1.2', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.1', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.106', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.18', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.30', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.47', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.5', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.54', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.63', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.2.9', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.11', 5, 'Нецелевые');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.3.15', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('1.4.1', 6, 'Бюджетные');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.11', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('2.8', 1, 'Бухучет');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('3.41', 7, 'Другие');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.1', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.41', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('4.47', 4, 'Госзакупки');
INSERT INTO "ViolationGroups"("ViolationTypeCode", "ViolationGroupCode", "ViolationGroupName") VALUES ('6.1.3', 5, 'Нецелевые');


INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Agaptsov',  'Агапцов С.А.', 'prom', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на промышленность, исследован (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Roslyak',  'Росляк Ю.В.', 'kom_hoz', 'Департамент по экспертно-аналитической и контрольной деятельности в области средств межбюджетных трансфертов бюджетам субъектов Россий (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Men',  'Мень М.А.', 'science', 'Департамент аудита социальной сферы и науки');
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Manuylova',  'Мануйлова Т.Н.', 'cost', 'Департамент по экспертно-аналитической и контрольной деятельности в области государственного внутреннего и внешнего долга Российской (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('ChistovaMedia',  'Чистова В.Е.', 'media', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на связь, информатику,  (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Shtogrin',  'Штогрин С.И.', 'revenue', 'Департамент по экспертно- аналитической и контрольной деятельности в области формирования и исполнения доходов федерального бюджета' (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Bogomolov',  'Богомолов В.Н.', 'transport', 'Департамент по экспертно- аналитической и контрольной деятельности в области расходов федерального бюджета на топливно-энергети (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Rokhmistrov',  'Рохмистров М.С.', 'contract', 'Департамент по экспертно-аналитической и контрольной деятельности в области оборота федерального имущества, средств резервных (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Perchyan',  'Перчян А.В.', 'credit', 'Департамент по экспертно- аналитической и контрольной деятельности в области работы Центрального банка Российской Федерации, обеспечен (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('ChistovaDefense',  'Чистова В.Е.', 'defense', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на национальную обо (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Apparatus',  'Аппарат СП  А', 'apparatus', 'Аппарат');
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Blinova',  'Блинова Т.В.', 'justice', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на общегосударственные вопр (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Katrenko',  'Орлова С.Ю.', 'sport', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на физическую культуру, спорт (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Zhambalnimbuyev',  'Каульбарс А.', 'agriculture', 'Департамент по экспертно-аналитической и контрольной деятельности в области расходов федерального бюджета на охрану окруж (...)
INSERT INTO core."Auditor_Dir"("Aud_Id", "Aud_Name", "Dir_Id", "Dir_Name") VALUES ('Zhdankov',  'Жданьков А.И.', 'international', 'Департамент по экспертно-аналитической и контрольной деятельности в области государственного внутреннего и внешнего долга Рос (...)

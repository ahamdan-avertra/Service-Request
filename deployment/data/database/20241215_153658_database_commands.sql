CREATE TABLE "serviceresuest$workorder" (
	"id" BIGINT NOT NULL,
	"workorderid" BIGINT NULL,
	"workordernumber" VARCHAR_IGNORECASE(200) NULL,
	"lineitem" VARCHAR_IGNORECASE(200) NULL,
	"servicecost" DECIMAL(28, 8) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "serviceresuest$workorder_workorderid_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('da28036d-7108-4354-beb6-1b258efb8b16', 'ServiceResuest.WorkOrder', 'serviceresuest$workorder', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('d0cdae6a-bd9a-4693-9630-8f652e671099', 'da28036d-7108-4354-beb6-1b258efb8b16', 'WorkOrderID', 'workorderid', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('d0cdae6a-bd9a-4693-9630-8f652e671099', 'serviceresuest$workorder_workorderid_mxseq', 1, 0);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('e3a11cc0-b0b1-41bc-aa8e-adc13d166671', 'da28036d-7108-4354-beb6-1b258efb8b16', 'WorkOrderNumber', 'workordernumber', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('c5b4c372-5843-4dd9-aec2-ba4ac689e68a', 'da28036d-7108-4354-beb6-1b258efb8b16', 'LineItem', 'lineitem', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('54df43f1-766e-450b-8956-18557941ac20', 'da28036d-7108-4354-beb6-1b258efb8b16', 'ServiceCost', 'servicecost', 5, 0, '0', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2a6b8c3a-d154-348c-a8cb-321755d30212', 'da28036d-7108-4354-beb6-1b258efb8b16', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "serviceresuest$document" (
	"id" BIGINT NOT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "superentity_id", "remote", "remote_primary_key") VALUES ('207fdf27-0b76-4f5a-8add-bf970be9b077', 'ServiceResuest.Document', 'serviceresuest$document', '170ce49d-f29c-4fac-99a6-b55e8a3aeb39', false, false);
CREATE TABLE "serviceresuest$servicerequest" (
	"id" BIGINT NOT NULL,
	"servicerequestid" BIGINT NULL,
	"servicetype" VARCHAR_IGNORECASE(9) NULL,
	"status" VARCHAR_IGNORECASE(11) NULL,
	"description" VARCHAR_IGNORECASE(1000) NULL,
	"completiondate" TIMESTAMP NULL,
	"technicianremarks" VARCHAR_IGNORECASE(500) NULL,
	"createddate" TIMESTAMP NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "serviceresuest$servicerequest_servicerequestid_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('d235e633-3c27-4c55-8e7d-48305281a35c', 'ServiceResuest.ServiceRequest', 'serviceresuest$servicerequest', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('654839b7-c1dd-4ba7-823c-039c488a2c05', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'ServiceRequestID', 'servicerequestid', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('654839b7-c1dd-4ba7-823c-039c488a2c05', 'serviceresuest$servicerequest_servicerequestid_mxseq', 1, 0);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('89c1f7fc-fe0e-4710-a313-08c94b29fd25', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'ServiceType', 'servicetype', 40, 9, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('0683003e-2e50-4308-b8c3-b2cdea99d99f', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'Status', 'status', 40, 11, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7e6507c3-bad9-4d8c-8744-18993b6dc74f', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'Description', 'description', 30, 1000, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('1daa9192-145d-4d75-b8c3-d7ef6d4d849b', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'CompletionDate', 'completiondate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('9c758994-7591-48a1-870c-d27aa1542975', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'TechnicianRemarks', 'technicianremarks', 30, 500, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ab052b2d-ff3a-37ee-8940-32480451dc47', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'createdDate', 'createddate', 20, 0, '', false);
CREATE TABLE "serviceresuest$equipment" (
	"id" BIGINT NOT NULL,
	"equipmentid" BIGINT NULL,
	"serialno" VARCHAR_IGNORECASE(200) NULL,
	"assettag" VARCHAR_IGNORECASE(200) NULL,
	"modelno" VARCHAR_IGNORECASE(200) NULL,
	"equipmenttype" VARCHAR_IGNORECASE(7) NULL,
	"manufacturedate" TIMESTAMP NULL,
	"purchasedate" TIMESTAMP NULL,
	"warrantystatus" VARCHAR_IGNORECASE(9) NULL,
	PRIMARY KEY("id"));
CREATE SEQUENCE "serviceresuest$equipment_equipmentid_mxseq" AS BIGINT START WITH 1;
INSERT INTO "mendixsystem$entity" ("id", "entity_name", "table_name", "remote", "remote_primary_key") VALUES ('a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'ServiceResuest.Equipment', 'serviceresuest$equipment', false, false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('4dbfc49c-2167-4d59-a474-8c1ca3917e05', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'EquipmentID', 'equipmentid', 0, 0, '1', true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", "name", "start_value", "current_value") VALUES ('4dbfc49c-2167-4d59-a474-8c1ca3917e05', 'serviceresuest$equipment_equipmentid_mxseq', 1, 0);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('6b1b0bcc-9a7a-494e-b2ed-76fb03a63482', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'SerialNo', 'serialno', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('7fdfa172-50e9-4076-b70f-2831dba31cd6', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'AssetTag', 'assettag', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('3801f10f-58fc-4477-8757-313aac2dff67', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'ModelNo', 'modelno', 30, 200, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('126aadaa-866b-4828-ab36-aac9cf82d2a5', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'EquipmentType', 'equipmenttype', 40, 7, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('aaa72d14-d0de-493d-8d36-7c743570918c', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'ManufactureDate', 'manufacturedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('ba42bb5e-3c1e-404d-ad8a-888d5809b6b7', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'PurchaseDate', 'purchasedate', 20, 0, '', false);
INSERT INTO "mendixsystem$attribute" ("id", "entity_id", "attribute_name", "column_name", "type", "length", "default_value", "is_auto_number") VALUES ('2f055d27-9486-41b7-9725-c37f223014fb', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'WarrantyStatus', 'warrantystatus', 40, 9, '', false);
CREATE TABLE "serviceresuest$workorder_customer" (
	"serviceresuest$workorderid" BIGINT NOT NULL,
	"useraccount$customerid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$workorderid","useraccount$customerid"),
	CONSTRAINT "uniq_serviceresuest$workorder_customer_useraccount$customerid" UNIQUE ("useraccount$customerid"),
	CONSTRAINT "uniq_serviceresuest$workorder_customer_serviceresuest$workorderid" UNIQUE ("serviceresuest$workorderid"),
	CONSTRAINT "frn_serviceresuest$workorder_customer_serviceresuest$workorderid" FOREIGN KEY ( "serviceresuest$workorderid" ) REFERENCES "serviceresuest$workorder" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$workorder_customer_useraccount$customerid" FOREIGN KEY ( "useraccount$customerid" ) REFERENCES "useraccount$customer" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$workorder_customer_useraccount$customer_serviceresuest$workorder" ON "serviceresuest$workorder_customer" ("useraccount$customerid" ASC,"serviceresuest$workorderid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('bdd4a1e8-18a8-4062-8f53-29ff49159af7', 'ServiceResuest.WorkOrder_Customer', 'serviceresuest$workorder_customer', 'da28036d-7108-4354-beb6-1b258efb8b16', 'fd3c7833-d0ab-4162-9545-f38245f6f144', 'serviceresuest$workorderid', 'useraccount$customerid', 'idx_serviceresuest$workorder_customer_useraccount$customer_serviceresuest$workorder', 'frn_serviceresuest$workorder_customer_serviceresuest$workorderid', 'frn_serviceresuest$workorder_customer_useraccount$customerid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$workorder_customer_useraccount$customerid', 'bdd4a1e8-18a8-4062-8f53-29ff49159af7', '7cf06761-38a4-31f8-90de-bd578b2f88de');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$workorder_customer_serviceresuest$workorderid', 'bdd4a1e8-18a8-4062-8f53-29ff49159af7', 'b6562679-9c3d-39a1-acee-e3f8f5d35de4');
CREATE TABLE "serviceresuest$document_servicerequest" (
	"serviceresuest$documentid" BIGINT NOT NULL,
	"serviceresuest$servicerequestid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$documentid","serviceresuest$servicerequestid"),
	CONSTRAINT "uniq_serviceresuest$document_servicerequest_serviceresuest$documentid" UNIQUE ("serviceresuest$documentid"),
	CONSTRAINT "frn_serviceresuest$document_servicerequest_serviceresuest$documentid" FOREIGN KEY ( "serviceresuest$documentid" ) REFERENCES "serviceresuest$document" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$document_servicerequest_serviceresuest$servicerequestid" FOREIGN KEY ( "serviceresuest$servicerequestid" ) REFERENCES "serviceresuest$servicerequest" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$document_servicerequest_serviceresuest$servicerequest_serviceresuest$document" ON "serviceresuest$document_servicerequest" ("serviceresuest$servicerequestid" ASC,"serviceresuest$documentid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('ae5e7af4-eccb-498a-802e-2e396fe0e248', 'ServiceResuest.Document_ServiceRequest', 'serviceresuest$document_servicerequest', '207fdf27-0b76-4f5a-8add-bf970be9b077', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'serviceresuest$documentid', 'serviceresuest$servicerequestid', 'idx_serviceresuest$document_servicerequest_serviceresuest$servicerequest_serviceresuest$document', 'frn_serviceresuest$document_servicerequest_serviceresuest$documentid', 'frn_serviceresuest$document_servicerequest_serviceresuest$servicerequestid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$document_servicerequest_serviceresuest$documentid', 'ae5e7af4-eccb-498a-802e-2e396fe0e248', '1eab4504-2c29-3226-8785-5fd8b023f4ab');
CREATE TABLE "serviceresuest$servicerequest_account_assignedtechnician" (
	"serviceresuest$servicerequestid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$servicerequestid","administration$accountid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_account_assignedtechnician_serviceresuest$servicerequestid" UNIQUE ("serviceresuest$servicerequestid"),
	CONSTRAINT "frn_serviceresuest$servicerequest_account_assignedtechnician_serviceresuest$servicerequestid" FOREIGN KEY ( "serviceresuest$servicerequestid" ) REFERENCES "serviceresuest$servicerequest" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$servicerequest_account_assignedtechnician_administration$accountid" FOREIGN KEY ( "administration$accountid" ) REFERENCES "administration$account" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$servicerequest_account_assignedtechnician_administration$account_serviceresuest$servicerequest" ON "serviceresuest$servicerequest_account_assignedtechnician" ("administration$accountid" ASC,"serviceresuest$servicerequestid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('f38ec483-1c52-4778-94a2-dd9afc482641', 'ServiceResuest.ServiceRequest_Account_AssignedTechnician', 'serviceresuest$servicerequest_account_assignedtechnician', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'd6e0e843-e8b5-4db7-ba37-64ae7ca659d0', 'serviceresuest$servicerequestid', 'administration$accountid', 'idx_serviceresuest$servicerequest_account_assignedtechnician_administration$account_serviceresuest$servicerequest', 'frn_serviceresuest$servicerequest_account_assignedtechnician_serviceresuest$servicerequestid', 'frn_serviceresuest$servicerequest_account_assignedtechnician_administration$accountid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_account_assignedtechnician_serviceresuest$servicerequestid', 'f38ec483-1c52-4778-94a2-dd9afc482641', 'a9b156d9-00a1-3540-8ae1-4865adc0922c');
CREATE TABLE "serviceresuest$servicerequest_workorder" (
	"serviceresuest$servicerequestid" BIGINT NOT NULL,
	"serviceresuest$workorderid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$servicerequestid","serviceresuest$workorderid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_workorder_serviceresuest$workorderid" UNIQUE ("serviceresuest$workorderid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_workorder_serviceresuest$servicerequestid" UNIQUE ("serviceresuest$servicerequestid"),
	CONSTRAINT "frn_serviceresuest$servicerequest_workorder_serviceresuest$servicerequestid" FOREIGN KEY ( "serviceresuest$servicerequestid" ) REFERENCES "serviceresuest$servicerequest" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$servicerequest_workorder_serviceresuest$workorderid" FOREIGN KEY ( "serviceresuest$workorderid" ) REFERENCES "serviceresuest$workorder" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$servicerequest_workorder_serviceresuest$workorder_serviceresuest$servicerequest" ON "serviceresuest$servicerequest_workorder" ("serviceresuest$workorderid" ASC,"serviceresuest$servicerequestid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('271d6bbd-1af8-44a8-a107-2eb547b58350', 'ServiceResuest.ServiceRequest_WorkOrder', 'serviceresuest$servicerequest_workorder', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'da28036d-7108-4354-beb6-1b258efb8b16', 'serviceresuest$servicerequestid', 'serviceresuest$workorderid', 'idx_serviceresuest$servicerequest_workorder_serviceresuest$workorder_serviceresuest$servicerequest', 'frn_serviceresuest$servicerequest_workorder_serviceresuest$servicerequestid', 'frn_serviceresuest$servicerequest_workorder_serviceresuest$workorderid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_workorder_serviceresuest$workorderid', '271d6bbd-1af8-44a8-a107-2eb547b58350', 'd20131dd-c139-3bec-b19c-f1eaac2bc67f');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_workorder_serviceresuest$servicerequestid', '271d6bbd-1af8-44a8-a107-2eb547b58350', '0c59863b-a8fd-35b5-8534-5abb8d3c0f0a');
CREATE TABLE "serviceresuest$servicerequest_equipment" (
	"serviceresuest$servicerequestid" BIGINT NOT NULL,
	"serviceresuest$equipmentid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$servicerequestid","serviceresuest$equipmentid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_equipment_serviceresuest$equipmentid" UNIQUE ("serviceresuest$equipmentid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_equipment_serviceresuest$servicerequestid" UNIQUE ("serviceresuest$servicerequestid"),
	CONSTRAINT "frn_serviceresuest$servicerequest_equipment_serviceresuest$servicerequestid" FOREIGN KEY ( "serviceresuest$servicerequestid" ) REFERENCES "serviceresuest$servicerequest" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$servicerequest_equipment_serviceresuest$equipmentid" FOREIGN KEY ( "serviceresuest$equipmentid" ) REFERENCES "serviceresuest$equipment" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$servicerequest_equipment_serviceresuest$equipment_serviceresuest$servicerequest" ON "serviceresuest$servicerequest_equipment" ("serviceresuest$equipmentid" ASC,"serviceresuest$servicerequestid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('97cc1d81-fbda-4a3a-b62d-ac19874bba3a', 'ServiceResuest.ServiceRequest_Equipment', 'serviceresuest$servicerequest_equipment', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'a1bc6f93-4ba6-447b-9b44-ce533986e48f', 'serviceresuest$servicerequestid', 'serviceresuest$equipmentid', 'idx_serviceresuest$servicerequest_equipment_serviceresuest$equipment_serviceresuest$servicerequest', 'frn_serviceresuest$servicerequest_equipment_serviceresuest$servicerequestid', 'frn_serviceresuest$servicerequest_equipment_serviceresuest$equipmentid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_equipment_serviceresuest$equipmentid', '97cc1d81-fbda-4a3a-b62d-ac19874bba3a', 'fee8b368-7ae0-3069-b365-c0cf0174d9a3');
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_equipment_serviceresuest$servicerequestid', '97cc1d81-fbda-4a3a-b62d-ac19874bba3a', '659e12d7-e083-3fd7-905d-6cafc17f219d');
CREATE TABLE "serviceresuest$servicerequest_customer" (
	"serviceresuest$servicerequestid" BIGINT NOT NULL,
	"useraccount$customerid" BIGINT NOT NULL,
	PRIMARY KEY("serviceresuest$servicerequestid","useraccount$customerid"),
	CONSTRAINT "uniq_serviceresuest$servicerequest_customer_serviceresuest$servicerequestid" UNIQUE ("serviceresuest$servicerequestid"),
	CONSTRAINT "frn_serviceresuest$servicerequest_customer_serviceresuest$servicerequestid" FOREIGN KEY ( "serviceresuest$servicerequestid" ) REFERENCES "serviceresuest$servicerequest" ( "id" ) ON DELETE CASCADE,
	CONSTRAINT "frn_serviceresuest$servicerequest_customer_useraccount$customerid" FOREIGN KEY ( "useraccount$customerid" ) REFERENCES "useraccount$customer" ( "id" ) ON DELETE CASCADE);
CREATE INDEX "idx_serviceresuest$servicerequest_customer_useraccount$customer_serviceresuest$servicerequest" ON "serviceresuest$servicerequest_customer" ("useraccount$customerid" ASC,"serviceresuest$servicerequestid" ASC);
INSERT INTO "mendixsystem$association" ("id", "association_name", "table_name", "parent_entity_id", "child_entity_id", "parent_column_name", "child_column_name", "index_name", "parent_fkc_name", "child_fkc_name", "parent_fkc_action", "child_fkc_action") VALUES ('4e2edd4a-4209-4016-a5e8-44cdc080bc31', 'ServiceResuest.ServiceRequest_Customer', 'serviceresuest$servicerequest_customer', 'd235e633-3c27-4c55-8e7d-48305281a35c', 'fd3c7833-d0ab-4162-9545-f38245f6f144', 'serviceresuest$servicerequestid', 'useraccount$customerid', 'idx_serviceresuest$servicerequest_customer_useraccount$customer_serviceresuest$servicerequest', 'frn_serviceresuest$servicerequest_customer_serviceresuest$servicerequestid', 'frn_serviceresuest$servicerequest_customer_useraccount$customerid', 0, 0);
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$servicerequest_customer_serviceresuest$servicerequestid', '4e2edd4a-4209-4016-a5e8-44cdc080bc31', 'a0766a5a-9c84-3779-b993-73c492b50d7b');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241215 15:36:58';

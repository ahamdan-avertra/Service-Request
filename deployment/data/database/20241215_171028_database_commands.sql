ALTER TABLE "serviceresuest$document_servicerequest" ADD CONSTRAINT "uniq_serviceresuest$document_servicerequest_serviceresuest$servicerequestid" UNIQUE ("serviceresuest$servicerequestid");
INSERT INTO "mendixsystem$unique_constraint" ("name", "table_id", "column_id") VALUES ('uniq_serviceresuest$document_servicerequest_serviceresuest$servicerequestid', 'ae5e7af4-eccb-498a-802e-2e396fe0e248', '30fd27b9-129a-32a5-91d9-1059ef03a366');
UPDATE "mendixsystem$version" SET "versionnumber" = '4.2', "lastsyncdate" = '20241215 17:10:28';

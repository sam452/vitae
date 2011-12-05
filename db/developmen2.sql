BEGIN TRANSACTION;
CREATE TABLE "chairs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "positions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "company" varchar(255), "position" varchar(255), "objective" text, "grizzard" text, "skill" text, "pid" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO positions VALUES(1,'Acme, Inc.','Developer Manager','To be a nice manager.','Managed many people. Supervised many projects.','I use Adobe Indesign.
I use text editors.','developer_manager',NULL,NULL);
INSERT INTO positions VALUES(2,'Kelly Services, Inc.','Quality Control Manager','Lead a selfless and continually improving team as COO of a medium-sized company.','From 1995 to very recently, I''ve been leading many teams in production to improve quality and response times to internal and external customers. These include Production Supervisor, Production Art Manager, offset, bindery, imaging teams. As part of the duties of a manager, I developed procedures and initial systems to improve service, measured and captured data to show weaknesses and strengths so as to refine processes for teams and customers.Oversaw year-over-year continuous increase in productivity by building processes for accuracy, cost reduction (reduced overhead from five to two through attrition) and keeping pleased customers by increasing quality and throughput.Responsible for up to 12 direct reports in art, prepress, press, bindery and laser imaging.','Developing and exploiting available technology to increase quality and reduce bottlenecks in workflow. Excellent communication skills were used to get buy-in from other internal teams with my teams over my many years with Grizzard. Started ISO 9000 documentation process when plant shut down years ago.
Managing multiple projects with competing due dates, hiring, firing, P&L management, managing customer expectations with internal clients, purchase orders within an Sarbanes-Oxley environment.','kQCMgr',NULL,NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO schema_migrations VALUES(20111020002448);
INSERT INTO schema_migrations VALUES(20111203152653);
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO sqlite_sequence VALUES('positions',2);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;

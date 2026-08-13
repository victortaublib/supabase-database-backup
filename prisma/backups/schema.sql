


SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


COMMENT ON SCHEMA "public" IS 'standard public schema';



CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";






CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";






CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";






CREATE TYPE "public"."AuditAction" AS ENUM (
    'CREATED',
    'UPDATED',
    'DELETED'
);


ALTER TYPE "public"."AuditAction" OWNER TO "postgres";


CREATE TYPE "public"."AuditEntity" AS ENUM (
    'DAILY_REPORT',
    'MATERIAL_REQUEST',
    'VOLUNTEER_REQUEST',
    'USER',
    'SETTING',
    'DEMAND',
    'WHATSAPP_GROUP'
);


ALTER TYPE "public"."AuditEntity" OWNER TO "postgres";


CREATE TYPE "public"."DemandStatus" AS ENUM (
    'REGISTERED',
    'PROTOCOLED',
    'IN_FOLLOW_UP',
    'RESOLVED',
    'CANCELLED'
);


ALTER TYPE "public"."DemandStatus" OWNER TO "postgres";


CREATE TYPE "public"."MaterialStatus" AS ENUM (
    'PENDING',
    'SCHEDULED',
    'IN_ROUTE',
    'DELIVERED',
    'CANCELLED'
);


ALTER TYPE "public"."MaterialStatus" OWNER TO "postgres";


CREATE TYPE "public"."Role" AS ENUM (
    'ADMIN',
    'OPERATOR'
);


ALTER TYPE "public"."Role" OWNER TO "postgres";


CREATE TYPE "public"."VolunteerStatus" AS ENUM (
    'PENDING_CONTACT',
    'CONTACTED',
    'ACTIVE',
    'UNAVAILABLE',
    'CANCELLED'
);


ALTER TYPE "public"."VolunteerStatus" OWNER TO "postgres";

SET default_tablespace = '';

SET default_table_access_method = "heap";


CREATE TABLE IF NOT EXISTS "public"."audit_logs" (
    "id" "uuid" NOT NULL,
    "action" "public"."AuditAction" NOT NULL,
    "entity" "public"."AuditEntity" NOT NULL,
    "entityId" "text",
    "summary" "text" NOT NULL,
    "changes" "jsonb",
    "userId" "uuid" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."audit_logs" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."daily_reports" (
    "id" "uuid" NOT NULL,
    "date" "date" NOT NULL,
    "tag" "text" NOT NULL,
    "contacts" integer DEFAULT 0 NOT NULL,
    "replies" integer DEFAULT 0 NOT NULL,
    "supporters" integer DEFAULT 0 NOT NULL,
    "materialRequestsCount" integer DEFAULT 0 NOT NULL,
    "volunteerRequestsCount" integer DEFAULT 0 NOT NULL,
    "observations" "text",
    "userId" "uuid" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."daily_reports" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."demand_timeline_events" (
    "id" "uuid" NOT NULL,
    "demandId" "uuid" NOT NULL,
    "eventType" "text" NOT NULL,
    "fromStatus" "text",
    "toStatus" "text",
    "note" "text",
    "userId" "uuid" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE "public"."demand_timeline_events" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."demandas" (
    "id" "uuid" NOT NULL,
    "fullName" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "type" "text" NOT NULL,
    "tag" "text" NOT NULL,
    "neighborhood" "text" NOT NULL,
    "city" "text" NOT NULL,
    "fullAddress" "text" NOT NULL,
    "referencePoint" "text",
    "description" "text" NOT NULL,
    "protocolNumber" "text",
    "protocolDate" "date",
    "responsibleAssessor" "text",
    "status" "public"."DemandStatus" DEFAULT 'REGISTERED'::"public"."DemandStatus" NOT NULL,
    "notes" "text",
    "userId" "uuid" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."demandas" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."material_requests" (
    "id" "uuid" NOT NULL,
    "fullName" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "tag" "text" NOT NULL,
    "neighborhood" "text" NOT NULL,
    "city" "text" NOT NULL,
    "fullAddress" "text" NOT NULL,
    "referencePoint" "text",
    "materials" "text"[],
    "materialOther" "text",
    "quantity" integer DEFAULT 1 NOT NULL,
    "preferredDate" "date",
    "preferredTime" "text",
    "status" "public"."MaterialStatus" DEFAULT 'PENDING'::"public"."MaterialStatus" NOT NULL,
    "notes" "text",
    "userId" "uuid" NOT NULL,
    "assignedToId" "uuid",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."material_requests" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."settings" (
    "key" "text" NOT NULL,
    "value" "jsonb",
    "description" "text",
    "updatedBy" "uuid",
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."settings" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."users" (
    "id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "email" "text" NOT NULL,
    "passwordHash" "text" NOT NULL,
    "role" "public"."Role" DEFAULT 'OPERATOR'::"public"."Role" NOT NULL,
    "avatarUrl" "text",
    "active" boolean DEFAULT true NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."users" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."volunteer_requests" (
    "id" "uuid" NOT NULL,
    "fullName" "text" NOT NULL,
    "phone" "text" NOT NULL,
    "tag" "text" NOT NULL,
    "neighborhood" "text" NOT NULL,
    "city" "text" NOT NULL,
    "availability" "text"[],
    "helpTypes" "text"[],
    "helpOther" "text",
    "status" "public"."VolunteerStatus" DEFAULT 'PENDING_CONTACT'::"public"."VolunteerStatus" NOT NULL,
    "notes" "text",
    "userId" "uuid" NOT NULL,
    "assignedToId" "uuid",
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."volunteer_requests" OWNER TO "postgres";


CREATE TABLE IF NOT EXISTS "public"."whatsapp_groups" (
    "id" "uuid" NOT NULL,
    "name" "text" NOT NULL,
    "link" "text" NOT NULL,
    "userId" "uuid" NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);


ALTER TABLE "public"."whatsapp_groups" OWNER TO "postgres";


ALTER TABLE ONLY "public"."audit_logs"
    ADD CONSTRAINT "audit_logs_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."daily_reports"
    ADD CONSTRAINT "daily_reports_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."demand_timeline_events"
    ADD CONSTRAINT "demand_timeline_events_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."demandas"
    ADD CONSTRAINT "demandas_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."material_requests"
    ADD CONSTRAINT "material_requests_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."settings"
    ADD CONSTRAINT "settings_pkey" PRIMARY KEY ("key");



ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."volunteer_requests"
    ADD CONSTRAINT "volunteer_requests_pkey" PRIMARY KEY ("id");



ALTER TABLE ONLY "public"."whatsapp_groups"
    ADD CONSTRAINT "whatsapp_groups_pkey" PRIMARY KEY ("id");



CREATE INDEX "audit_logs_createdAt_idx" ON "public"."audit_logs" USING "btree" ("createdAt");



CREATE INDEX "audit_logs_entity_idx" ON "public"."audit_logs" USING "btree" ("entity");



CREATE INDEX "daily_reports_date_idx" ON "public"."daily_reports" USING "btree" ("date");



CREATE INDEX "daily_reports_tag_idx" ON "public"."daily_reports" USING "btree" ("tag");



CREATE UNIQUE INDEX "daily_reports_userId_date_tag_key" ON "public"."daily_reports" USING "btree" ("userId", "date", "tag");



CREATE INDEX "demand_timeline_events_demandId_createdAt_idx" ON "public"."demand_timeline_events" USING "btree" ("demandId", "createdAt");



CREATE INDEX "demandas_createdAt_idx" ON "public"."demandas" USING "btree" ("createdAt");



CREATE INDEX "demandas_neighborhood_idx" ON "public"."demandas" USING "btree" ("neighborhood");



CREATE INDEX "demandas_status_idx" ON "public"."demandas" USING "btree" ("status");



CREATE INDEX "demandas_tag_idx" ON "public"."demandas" USING "btree" ("tag");



CREATE INDEX "demandas_type_idx" ON "public"."demandas" USING "btree" ("type");



CREATE INDEX "material_requests_neighborhood_idx" ON "public"."material_requests" USING "btree" ("neighborhood");



CREATE INDEX "material_requests_preferredDate_idx" ON "public"."material_requests" USING "btree" ("preferredDate");



CREATE INDEX "material_requests_status_idx" ON "public"."material_requests" USING "btree" ("status");



CREATE INDEX "material_requests_tag_idx" ON "public"."material_requests" USING "btree" ("tag");



CREATE UNIQUE INDEX "users_email_key" ON "public"."users" USING "btree" ("email");



CREATE INDEX "volunteer_requests_neighborhood_idx" ON "public"."volunteer_requests" USING "btree" ("neighborhood");



CREATE INDEX "volunteer_requests_status_idx" ON "public"."volunteer_requests" USING "btree" ("status");



CREATE INDEX "volunteer_requests_tag_idx" ON "public"."volunteer_requests" USING "btree" ("tag");



CREATE INDEX "whatsapp_groups_createdAt_idx" ON "public"."whatsapp_groups" USING "btree" ("createdAt");



ALTER TABLE ONLY "public"."audit_logs"
    ADD CONSTRAINT "audit_logs_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."daily_reports"
    ADD CONSTRAINT "daily_reports_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."demand_timeline_events"
    ADD CONSTRAINT "demand_timeline_events_demandId_fkey" FOREIGN KEY ("demandId") REFERENCES "public"."demandas"("id") ON UPDATE CASCADE ON DELETE CASCADE;



ALTER TABLE ONLY "public"."demand_timeline_events"
    ADD CONSTRAINT "demand_timeline_events_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."demandas"
    ADD CONSTRAINT "demandas_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."material_requests"
    ADD CONSTRAINT "material_requests_assignedToId_fkey" FOREIGN KEY ("assignedToId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."material_requests"
    ADD CONSTRAINT "material_requests_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."settings"
    ADD CONSTRAINT "settings_updatedBy_fkey" FOREIGN KEY ("updatedBy") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."volunteer_requests"
    ADD CONSTRAINT "volunteer_requests_assignedToId_fkey" FOREIGN KEY ("assignedToId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE SET NULL;



ALTER TABLE ONLY "public"."volunteer_requests"
    ADD CONSTRAINT "volunteer_requests_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE RESTRICT;



ALTER TABLE ONLY "public"."whatsapp_groups"
    ADD CONSTRAINT "whatsapp_groups_userId_fkey" FOREIGN KEY ("userId") REFERENCES "public"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;





ALTER PUBLICATION "supabase_realtime" OWNER TO "postgres";


GRANT USAGE ON SCHEMA "public" TO "postgres";
GRANT USAGE ON SCHEMA "public" TO "anon";
GRANT USAGE ON SCHEMA "public" TO "authenticated";
GRANT USAGE ON SCHEMA "public" TO "service_role";





































































































































































GRANT ALL ON TABLE "public"."audit_logs" TO "anon";
GRANT ALL ON TABLE "public"."audit_logs" TO "authenticated";
GRANT ALL ON TABLE "public"."audit_logs" TO "service_role";



GRANT ALL ON TABLE "public"."daily_reports" TO "anon";
GRANT ALL ON TABLE "public"."daily_reports" TO "authenticated";
GRANT ALL ON TABLE "public"."daily_reports" TO "service_role";



GRANT ALL ON TABLE "public"."demand_timeline_events" TO "anon";
GRANT ALL ON TABLE "public"."demand_timeline_events" TO "authenticated";
GRANT ALL ON TABLE "public"."demand_timeline_events" TO "service_role";



GRANT ALL ON TABLE "public"."demandas" TO "anon";
GRANT ALL ON TABLE "public"."demandas" TO "authenticated";
GRANT ALL ON TABLE "public"."demandas" TO "service_role";



GRANT ALL ON TABLE "public"."material_requests" TO "anon";
GRANT ALL ON TABLE "public"."material_requests" TO "authenticated";
GRANT ALL ON TABLE "public"."material_requests" TO "service_role";



GRANT ALL ON TABLE "public"."settings" TO "anon";
GRANT ALL ON TABLE "public"."settings" TO "authenticated";
GRANT ALL ON TABLE "public"."settings" TO "service_role";



GRANT ALL ON TABLE "public"."users" TO "anon";
GRANT ALL ON TABLE "public"."users" TO "authenticated";
GRANT ALL ON TABLE "public"."users" TO "service_role";



GRANT ALL ON TABLE "public"."volunteer_requests" TO "anon";
GRANT ALL ON TABLE "public"."volunteer_requests" TO "authenticated";
GRANT ALL ON TABLE "public"."volunteer_requests" TO "service_role";



GRANT ALL ON TABLE "public"."whatsapp_groups" TO "anon";
GRANT ALL ON TABLE "public"."whatsapp_groups" TO "authenticated";
GRANT ALL ON TABLE "public"."whatsapp_groups" TO "service_role";









ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";






ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";
ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";
































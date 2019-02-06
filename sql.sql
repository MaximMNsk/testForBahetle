CREATE DATABASE testing
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Russian_Russia.1251'
    LC_CTYPE = 'Russian_Russia.1251'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
CREATE USER test WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;
CREATE TABLE public.adverts
(
    "ID" integer NOT NULL DEFAULT nextval('"adverts_ID_seq"'::regclass),
    "FOREIGN_ID" integer,
    "TITLE" text COLLATE pg_catalog."default",
    "DESC" text COLLATE pg_catalog."default",
    "SECTION" text COLLATE pg_catalog."default",
    "SOURCE" text COLLATE pg_catalog."default",
    CONSTRAINT adverts_pkey PRIMARY KEY ("ID")
);
CREATE UNIQUE INDEX "UFID"
    ON public.adverts USING btree
    ("FOREIGN_ID" ASC NULLS LAST)
    TABLESPACE pg_default;
CREATE TABLE public.member
(
    id smallint,
    name character varying(20) COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.member
    OWNER to postgres;

ALTER TABLE member ADD PRIMARY KEY(id);

insert into member values (1,'�����@���O');

insert into member values (2,'����@���`');

insert into member values (3,'����@���L');
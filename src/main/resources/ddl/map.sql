CREATE TABLE public.map
(
    id smallint,
    lat decimal(9,6),
    lng decimal(9,6)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.map
    OWNER to postgres;

ALTER TABLE map ADD PRIMARY KEY(id);

insert into map values (1,34.679113, 135.557700);

insert into map values (2,34.996531, 135.742270);

insert into map values (3,34.726594, 135.752386);
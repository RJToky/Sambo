create database sambo;
\c sambo

create sequence pavillon_id_seq;
create sequence type_navire_id_seq;
create sequence navire_id_seq;
create sequence quai_id_seq;
create sequence escale_id_seq;
create sequence prevision_id_seq;
create sequence prestation_id_seq;
create sequence detail_prestation_id_seq;
create sequence prestation_escale_id_seq;
create sequence prix_stationnement_id_seq;
create sequence prix_remorquage_id_seq;

create table pavillon(
    id varchar(50) default concat('pavillon_', to_char(nextval('pavillon_id_seq'), 'FM000')) primary key,
    nom_pavillon varchar(20) not null,
    prix double precision not null
);

create table type_navire(
    id varchar(50) default concat('type_navire_', to_char(nextval('type_navire_id_seq'), 'FM000')) primary key,
    "type" varchar(20) not null,
    prix double precision not null
);

create table navire(
    id varchar(50) default concat('navire_', to_char(nextval('navire_id_seq'), 'FM000')) primary key,
    nom_navire varchar(20) not null,
    id_type_navire varchar(50) references type_navire(id),
    id_pavillon varchar(50) references pavillon(id),
    profondeur double precision not null,
    duree_remorquage double precision not null
);

create table quai(
    id varchar(50) default concat('quai_', to_char(nextval('quai_id_seq'), 'FM000')) primary key,
    nom_quai varchar(20) not null,
    profondeur double precision not null
);

create table escale(
    id varchar(50) default concat('escale_', to_char(nextval('escale_id_seq'), 'FM000')) primary key,
    id_navire varchar(50) references navire(id),
    id_quai varchar(50) references quai(id),
    date_entree timestamp not null,
    date_sortie timestamp
);

create table prevision(
    id varchar(50) default concat('prevision_', to_char(nextval('prevision_id_seq'), 'FM000')) primary key,
    id_navire varchar(50) references navire(id),
    date_entree timestamp not null,
    date_sortie timestamp
);

create table prestation(
    id varchar(50) default concat('prestation_', to_char(nextval('prestation_id_seq'), 'FM000')) primary key,
    nom_prestation varchar(20) not null
);

create table detail_prestation(
    id varchar(50) default concat('detail_prestation_', to_char(nextval('detail_prestation_id_seq'), 'FM000')) primary key,
    id_prestation varchar(50) references prestation(id),
    prix_national double precision not null,
    prix_international double precision not null
);

create table prestation_escale(
    id varchar(50) default concat('prestation_escale_', to_char(nextval('prestation_escale_id_seq'), 'FM000')) primary key,
    id_prestation varchar(50) references prestation(id),
    id_escale varchar(50) references escale(id)
);

create table prix_stationnement(
    id varchar(50) default concat('prix_stationnement_', to_char(nextval('prix_stationnement_id_seq'), 'FM000')) primary key,
    heure_debut time not null,
    heure_fin time not null,
    prix double precision not null
);

create table prix_remorquage(
    id varchar(50) default concat('prix_remorquage_', to_char(nextval('prix_remorquage_id_seq'), 'FM000')) primary key,
    augmentation double precision not null,
    tranche double precision not null, -- isaky ny firy min
    seuil double precision not null
);
create database sambo;
\c sambo

create sequence pavillon_id_seq;
create table pavillon(
    id varchar(50) default concat('pavillon_', to_char(nextval('pavillon_id_seq'), 'FM000')) primary key,
    nom_pavillon varchar(20) not null
);

create sequence type_navire_id_seq;
create table type_navire(
    id varchar(50) default concat('type_navire_', to_char(nextval('type_navire_id_seq'), 'FM000')) primary key,
    nom_type varchar(20) not null
);

create sequence navire_id_seq;
create table navire(
    id varchar(50) default concat('navire_', to_char(nextval('navire_id_seq'), 'FM000')) primary key,
    nom_navire varchar(20) not null,
    id_type_navire varchar(50) references type_navire(id),
    id_pavillon varchar(50) references pavillon(id),
    profondeur double precision not null,
    duree_remorquage double precision not null
);
-- 
create sequence quai_id_seq;
create table quai(
    id varchar(50) default concat('quai_', to_char(nextval('quai_id_seq'), 'FM000')) primary key,
    nom_quai varchar(20) not null,
    profondeur double precision not null
);

create sequence heure_jour_id_seq;
create table heure_jour(
    id varchar(50) default concat('heure_jour_', to_char(nextval('heure_jour_id_seq'), 'FM000')) primary key,
    debut time not null,
    fin time not null,
    majoration double precision not null
);

create sequence escale_id_seq;
create table escale(
    id varchar(50) default concat('escale_', to_char(nextval('escale_id_seq'), 'FM000')) primary key,
    id_navire varchar(50) references navire(id),
    date_entree timestamp,
    date_sortie timestamp
);

create sequence prestation_id_seq;
create table prestation(
    id varchar(50) default concat('prestation_', to_char(nextval('prestation_id_seq'), 'FM000')) primary key,
    nom_prestation varchar(20) not null,
    seuil time not null,
    tranche int not null
);

create sequence prestation_escale_id_seq;
create table prestation_escale(
    id varchar(50) default concat('prestation_escale_', to_char(nextval('prestation_escale_id_seq'), 'FM000')) primary key,
    id_escale varchar(50) references escale(id),
    id_quai varchar(50) references quai(id),
    id_prestation varchar(50) references prestation(id),
    debut timestamp,
    fin timestamp,
    etat int not null
);

create sequence profil_id_seq;
create table profil(
    id varchar(50) default concat('profil_', to_char(nextval('profil_id_seq'), 'FM000')) primary key,
    nom_profil varchar(20) not null
);

create sequence facture_id_seq;
create table facture(
    id varchar(50) default concat('facture_', to_char(nextval('facture_id_seq'), 'FM000')) primary key,
    id_prestation varchar(50) references prestation(id),
    montant double precision not null,
    etat int not null
);

create sequence facture_prestation_id_seq;
create table facture_prestation(
    id varchar(50) default concat('facture_prestation_', to_char(nextval('facture_prestation_id_seq'), 'FM000')) primary key,
    id_facture varchar(50) references facture(id),
    id_prestation varchar(50) references prestation(id),
    montant double precision not null
);

create sequence cours_echange_id_seq;
create table cours_echange(
    id varchar(50) default concat('cours_echange_', to_char(nextval('cours_echange_id_seq'), 'FM000')) primary key,
    id_pavillon varchar(50) not null,
    monnaie varchar(20) not null,
    abreviation varchar(10) not null,
    "date" timestamp default now(),
    valeur double precision not null
);

create sequence validation_prestation_id_seq;
create table validation_prestation(
    id varchar(50) default concat('validation_prestation_', to_char(nextval('validation_prestation_id_seq'), 'FM000')) primary key,
    id_prestation varchar(50) references prestation(id),
    "date" timestamp default now()
);

create sequence validation_facture_id_seq;
create table validation_facture(
    id varchar(50) default concat('validation_facture_', to_char(nextval('validation_facture_id_seq'), 'FM000')) primary key,
    id_facture varchar(50) references facture(id),
    "date" timestamp default now()
);

create sequence tarif_id_seq;
create table tarif(
    id varchar(50) default concat('tarif_', to_char(nextval('tarif_id_seq'), 'FM000')) primary key,
    id_prestation varchar(50) references prestation(id),
    id_pavillon varchar(50) references pavillon(id),
    id_type_navire varchar(50) references type_navire(id),
    id_quai varchar(50) references quai(id),
    debut_tranche int,
    fin_tranche int,
    prix double precision not null
);
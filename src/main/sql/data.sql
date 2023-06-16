insert into pavillon values
    (default, 'National'),
    (default, 'International')
;

insert into type_navire values
    (default, 'Petrolier'),
    (default, 'Paquebot')
;

insert into navire values
    (default, 'Navire 1', 'type_navire_001', 'pavillon_001', '10.5', '20'),
    (default, 'Navire 2', 'type_navire_001', 'pavillon_002', '8.5', '25'),
    (default, 'Navire 3', 'type_navire_002', 'pavillon_002', '12.1', '15')
;

insert into quai values
    (default, 'Quai A', 11.2),
    (default, 'Quai B', 9.8),
    (default, 'Quai C', 10.6),
    (default, 'Quai D', 13.0)
;

insert into escale values
    (default, 'navire_001', 'quai_003', '2023-06-20 12:00:00', '2023-06-20 14:30:00')
;

-----------------------
insert into prestation(id, nom_prestation, ariary, euro) values
    (default, 'Reparation', 50000.0, 100.0),
    (default, 'Eau', 10000.0, 50.0)
;
insert into prestation(id, nom_prestation, lineaire_apartir, tranche) values
    (default, 'Stationnement', 180, 10)
;
insert into prestation(id, nom_prestation, tranche) values
    (default, 'Remorquage', 15)
;
-----------------------

insert into prestation_escale values
    (default, 'escale_001', 'prestation_003'),
    (default, 'escale_001', 'prestation_004')
;

id varchar(50) default concat('tarif_', to_char(nextval('tarif_id_seq'), 'FM000')) primary key,
id_prestation varchar(50) references prestation(id),
id_pavillon varchar(50) references pavillon(id),
id_type_navire varchar(50) references type_navire(id),
id_quai varchar(50) references quai(id),
debut_tranche int not null,
fin_tranche int not null,
"value" double precision not null

insert into tarif values
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_001', 15, 50, 15000.0),
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_001', 50, 130, 20000.0),
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_001', 130, 180, 30000.0)
;
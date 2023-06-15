insert into pavillon values
    (default, 'National', 10000.0),
    (default, 'International', 15000.0)
;

insert into type_navire values
    (default, 'Petrolier', 75000.0),
    (default, 'Paquebot', 50000.0)
;

insert into navire values
    (default, 'Navire 1', 'type_navire_001', 'pavillon_001', '10.5', '20'),
    (default, 'Navire 2', 'type_navire_001', 'pavillon_002', '8.5', '25'),
    (default, 'Navire 3', 'type_navire_002', 'pavillon_002', '12.1', '15')
;

insert into quai values
    (default, 'Quai A', 11.2),
    (default, 'Quai B', 9.8),
    (default, 'Quai C', 10.6)
;

insert into escale values
    (default, 'navire_001', 'quai_003', '2023-06-20 12:00:00', '2023-06-20 14:30:00')
;

insert into prevision values
    (default, 'navire_002', '2023-06-23 15:30:00', '2023-06-23 17:00:00')
;

insert into prestation values
    (default, 'Reparation', 50000.0, 100.0),
    (default, 'Eau', 10000.0, 50.0)
;

insert into prestation_escale values
    (default, 'escale_001', 'prestation_001')
;

insert into stationnement values
    (default, '00:00:00', '00:15:00', 5000.0)
;

insert into remorquage values
    (default, 5.0, 10.0, 1.0)
;
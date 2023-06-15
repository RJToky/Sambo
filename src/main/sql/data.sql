insert into pavillon values
    (default, 'National', 10000.0),
    (default, 'Pavillon B', 15000.0)
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
    (default, 'navire_001', 'quai_003')
;

insert into date_debut values
    (default, 'escale_001', '2023-06-20 12:00:00', now())
;

insert into date_fin values
    (default, 'escale_001', '2023-06-20 14:30:00', now()),
    (default, 'escale_001', '2023-06-20 14:00:00', now())
;

insert into reparation_escale values
    (default, 'escale_001')
;

insert into eau_escale values
    (default, 'escale_001', default)
;

insert into prix_reparation values
    (default, 15000.0, now())
;

insert into prix_eau values
    (default, 1000.0, now())
;

-- insert into prix_stationnement values
--     (default, 'date1', 'date2', 'prix')
-- ;
insert into pavillon values
    (default, 'National'),
    (default, 'International')
;

insert into type_navire values
    (default, 'Petrolier'),
    (default, 'Paquebot')
;

insert into navire values
    (default, 'Navire 1', 'type_navire_001', 'pavillon_002', '10.5', '20'),
    (default, 'Navire 2', 'type_navire_002', 'pavillon_001', '8.5', '25')
;

insert into quai values
    (default, 'Quai A', 11.2),
    (default, 'Quai B', 9.8)
;

insert into heure_jour values
    (default, '06:00:00', '20:00:00', 20)
;

insert into escale values
    (default, 'navire_002', '2023-06-25 12:00:00', '2023-06-25 14:30:00')
;

insert into prestation values
    (default, 'Stationnement', '03:00:00', 15),
    (default, 'Remorquage', '00:00:00', 10),
    (default, 'Reparation', '00:00:00', 10),
    (default, 'Cession d''eau', '00:00:00', 15)
;

insert into prestation_escale values
    (default, 'escale_001', 'quai_001', 'prestation_001', '2023-06-25 12:00:00', '2023-06-25 14:30:00', 1),
    (default, 'escale_001', 'quai_001', 'prestation_002', '2023-06-25 14:05:00', '2023-06-25 14:30:00', 1),
    (default, 'escale_001', 'quai_001', 'prestation_003', '2023-06-25 12:30:00', '2023-06-25 13:00:00', 1)
;

insert into profil values
    (default, 'Capitainerie'),
    (default, 'Chef capitainerie'),
    (default, 'Facture'),
    (default, 'Chef facture')
;

insert into cours_echange values
    (default, 'pavillon_001', 'Ariary', 'Ar', now(), 1),
    (default, 'pavillon_002', 'Euro', '€', now(), 4000)
;

insert into tarif values
    --------------------- STATIONNEMENT / NATIONAL / Petrolier / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 15, 30, 12000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 30, 45, 20000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 45, 60, 23000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 60, 75, 24000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 75, 90, 27000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 90, 105, 29000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 105, 120, 32000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 120, 135, 35000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 135, 150, 42000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 165, 180, 55000.0),

    --------------------- STATIONNEMENT / NATIONAL / Petrolier / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 30, 45, 14000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 45, 60, 19000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 60, 75, 23000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 75, 90, 27000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 90, 105, 29000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 105, 120, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 120, 135, 31000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 135, 150, 32000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 150, 165, 33000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_001', 165, 180, 40000.0),

    --------------------- STATIONNEMENT / NATIONAL / Petrolier / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 30, 45, 12000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 45, 60, 13000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 60, 75, 14000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 75, 90, 15000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 90, 105, 20000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 105, 120, 25000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 120, 135, 26000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 135, 150, 29000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 150, 165, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 165, 180, 32000.0),

    --------------------- STATIONNEMENT / NATIONAL / Petrolier / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 15, 30, 20000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 30, 45, 21000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 45, 60, 24000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 60, 75, 25000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 75, 90, 28000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 90, 105, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 105, 120, 35000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 120, 135, 36000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 135, 150, 38000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 150, 165, 39000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_001', 'quai_002', 165, 180, 40000.0),

    --------------------- STATIONNEMENT / NATIONAL / Paquebot / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 15, 30, 13000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 30, 45, 14000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 45, 60, 19000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 60, 75, 21000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 75, 90, 23000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 90, 105, 25000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 105, 120, 28000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 120, 135, 29000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 135, 150, 32000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 150, 165, 35000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 165, 180, 42000.0),

    --------------------- STATIONNEMENT / NATIONAL / Paquebot / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 15, 30, 14000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 30, 45, 19000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 45, 60, 21000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 60, 75, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 75, 90, 31000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 90, 105, 34000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 105, 120, 35000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 120, 135, 39000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 135, 150, 40000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_001', 165, 180, 47000.0),

    --------------------- STATIONNEMENT / NATIONAL / Paquebot / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 15, 30, 21000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 30, 45, 24000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 45, 60, 27000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 60, 75, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 75, 90, 31000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 90, 105, 32000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 105, 120, 33000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 120, 135, 39000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 135, 150, 40000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 165, 180, 46000.0),

    --------------------- STATIONNEMENT / NATIONAL / Paquebot / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 30, 45, 13000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 45, 60, 15000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 60, 75, 19000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 75, 90, 20000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 90, 105, 23000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 105, 120, 27000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 120, 135, 29000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 135, 150, 30000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 150, 165, 35000.0),
    (default, 'prestation_001', 'pavillon_001', 'type_navire_002', 'quai_002', 165, 180, 40000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Petrolier / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 15, 30, 12000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 30, 45, 20000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 45, 60, 23000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 60, 75, 24000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 75, 90, 27000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 90, 105, 29000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 105, 120, 32000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 120, 135, 35000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 135, 150, 42000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 165, 180, 55000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Petrolier / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 30, 45, 14000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 45, 60, 19000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 60, 75, 23000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 75, 90, 27000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 90, 105, 29000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 105, 120, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 120, 135, 31000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 135, 150, 32000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 150, 165, 33000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_001', 165, 180, 40000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Petrolier / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 30, 45, 12000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 45, 60, 13000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 60, 75, 14000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 75, 90, 15000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 90, 105, 20000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 105, 120, 25000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 120, 135, 26000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 135, 150, 29000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 150, 165, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 165, 180, 32000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Petrolier / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 15, 30, 20000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 30, 45, 21000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 45, 60, 24000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 60, 75, 25000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 75, 90, 28000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 90, 105, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 105, 120, 35000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 120, 135, 36000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 135, 150, 38000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 150, 165, 39000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_001', 'quai_002', 165, 180, 40000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Paquebot / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 15, 30, 13000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 30, 45, 14000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 45, 60, 19000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 60, 75, 21000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 75, 90, 23000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 90, 105, 25000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 105, 120, 28000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 120, 135, 29000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 135, 150, 32000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 150, 165, 35000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 165, 180, 42000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Paquebot / Quai A ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 15, 30, 14000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 30, 45, 19000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 45, 60, 21000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 60, 75, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 75, 90, 31000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 90, 105, 34000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 105, 120, 35000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 120, 135, 39000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 135, 150, 40000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_001', 165, 180, 47000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Paquebot / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 15, 30, 21000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 30, 45, 24000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 45, 60, 27000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 60, 75, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 75, 90, 31000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 90, 105, 32000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 105, 120, 33000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 120, 135, 39000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 135, 150, 40000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 150, 165, 45000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 165, 180, 46000.0),

    --------------------- STATIONNEMENT / INTERNATIONAL / Paquebot / Quai B ---------------------
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 0, 15, 10000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 15, 30, 11000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 30, 45, 13000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 45, 60, 15000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 60, 75, 19000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 75, 90, 20000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 90, 105, 23000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 105, 120, 27000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 120, 135, 29000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 135, 150, 30000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 150, 165, 35000.0),
    (default, 'prestation_001', 'pavillon_002', 'type_navire_002', 'quai_002', 165, 180, 40000.0),




    --------------------- REMORQUAGE / NATIONAL / Petrolier ---------------------
    (default, 'prestation_002', 'pavillon_001', 'type_navire_001', 'quai_001', null, null, 12000.0),
    (default, 'prestation_002', 'pavillon_001', 'type_navire_001', 'quai_002', null, null, 11000.0),

    --------------------- REMORQUAGE / NATIONAL / Paquebot ---------------------
    (default, 'prestation_002', 'pavillon_001', 'type_navire_002', 'quai_001', null, null, 13000.0),
    (default, 'prestation_002', 'pavillon_001', 'type_navire_002', 'quai_002', null, null, 11000.0),

    --------------------- REMORQUAGE / INTERNATIONAL / Petrolier ---------------------
    (default, 'prestation_002', 'pavillon_002', 'type_navire_001', 'quai_001', null, null, 10000.0),
    (default, 'prestation_002', 'pavillon_002', 'type_navire_001', 'quai_002', null, null, 12000.0),

    --------------------- REMORQUAGE / INTERNATIONAL / Paquebot ---------------------
    (default, 'prestation_002', 'pavillon_002', 'type_navire_002', 'quai_001', null, null, 13000.0),
    (default, 'prestation_002', 'pavillon_002', 'type_navire_002', 'quai_002', null, null, 11000.0),




    --------------------- REPARATION / NATIONAL / Petrolier ---------------------
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_001', null, null, 14000.0),
    (default, 'prestation_003', 'pavillon_001', 'type_navire_001', 'quai_002', null, null, 16000.0),

    --------------------- REPARATION / NATIONAL / Paquebot ---------------------
    (default, 'prestation_003', 'pavillon_001', 'type_navire_002', 'quai_001', null, null, 10000.0),
    (default, 'prestation_003', 'pavillon_001', 'type_navire_002', 'quai_002', null, null, 11000.0),

    --------------------- REPARATION / INTERNATIONAL / Petrolier ---------------------
    (default, 'prestation_003', 'pavillon_002', 'type_navire_001', 'quai_001', null, null, 19000.0),
    (default, 'prestation_003', 'pavillon_002', 'type_navire_001', 'quai_002', null, null, 17000.0),

    --------------------- REPARATION / INTERNATIONAL / Paquebot ---------------------
    (default, 'prestation_003', 'pavillon_002', 'type_navire_002', 'quai_001', null, null, 17000.0),
    (default, 'prestation_003', 'pavillon_002', 'type_navire_002', 'quai_002', null, null, 16000.0),




    --------------------- CESSION EAU / NATIONAL / Petrolier ---------------------
    (default, 'prestation_004', 'pavillon_001', 'type_navire_001', 'quai_001', null, null, 12000.0),
    (default, 'prestation_004', 'pavillon_001', 'type_navire_001', 'quai_002', null, null, 13000.0),

    --------------------- CESSION EAU / NATIONAL / Paquebot ---------------------
    (default, 'prestation_004', 'pavillon_001', 'type_navire_002', 'quai_001', null, null, 12000.0),
    (default, 'prestation_004', 'pavillon_001', 'type_navire_002', 'quai_002', null, null, 10000.0),

    --------------------- CESSION EAU / INTERNATIONAL / Petrolier ---------------------
    (default, 'prestation_004', 'pavillon_002', 'type_navire_001', 'quai_001', null, null, 13000.0),
    (default, 'prestation_004', 'pavillon_002', 'type_navire_001', 'quai_002', null, null, 15000.0),

    --------------------- CESSION EAU / INTERNATIONAL / Paquebot ---------------------
    (default, 'prestation_004', 'pavillon_002', 'type_navire_002', 'quai_001', null, null, 14000.0),
    (default, 'prestation_004', 'pavillon_002', 'type_navire_002', 'quai_002', null, null, 12000.0)
;
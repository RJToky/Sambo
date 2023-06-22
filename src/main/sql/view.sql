create or replace view v_detail_navire as (
    select nav.*, typ.nom_type, pav.nom_pavillon
    from navire nav
    join type_navire typ on typ.id = nav.id_type_navire
    join pavillon pav on pav.id = nav.id_pavillon
);

create or replace view v_prestation_escale as (
    select pe.id, pe.id_escale, q.nom_quai, p.nom_prestation, pe.debut, pe.fin, pe.etat
    from prestation_escale pe
    join prestation p on p.id = pe.id_prestation
    join quai q on q.id = pe.id_quai
);
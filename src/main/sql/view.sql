create or replace view v_detail_navire as (
    select nav.*, typ.type, pav.nom_pavillon
    from navire nav
    join type_navire typ on typ.id = nav.id_type_navire
    join pavillon pav on pav.id = nav.id_pavillon
);

create or replace view v_detail_escale as (
);
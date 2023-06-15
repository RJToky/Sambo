create or replace view v_detail_navire as (
    select nav.*, typ.type, pav.nom_pavillon
    from navire nav
    join type_navire typ on typ.id = nav.id_type_navire
    join pavillon pav on pav.id = nav.id_pavillon
);

-- create or replace view v_detail_escale as (
--     select e.*, deb.value entree, fin.value sortie from escale e
--     join (
--         select *
--         from date_debut
--         order by date_insert desc
--         limit 1
--     ) deb on deb.id_escale = e.id
--     join (
--         select *
--         from date_fin
--         order by date_insert desc
--         limit 1
--     ) fin on fin.id_escale = e.id
-- );
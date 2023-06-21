create or replace view v_detail_navire as (
    select nav.*, typ.type, pav.nom_pavillon
    from navire nav
    join type_navire typ on typ.id = nav.id_type_navire
    join pavillon pav on pav.id = nav.id_pavillon
);

-- select quai.*
-- from quai
-- left join escale on escale.id_quai = quai.id
-- where (
--     quai.profondeur >= (select profondeur from navire where id = 'navire_001')
--     )
-- and
-- (
--     (not (escale.date_entree <= '2023-06-20 11:00:00' and '2023-06-20 11:00:00' <= escale.date_sortie)
--         and
--     not (escale.date_entree <= '2023-06-20 11:15:00' and '2023-06-20 11:15:00' <= escale.date_sortie)
--         and
--     not ('2023-06-20 11:00:00' <= escale.date_entree and escale.date_sortie <= '2023-06-20 11:15:00'))
--     or (escale.date_entree is null)
-- )
-- order by profondeur asc
-- limit 1
-- ;
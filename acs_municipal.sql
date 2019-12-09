-- View: pmaq."ACS_MUNICIPAL"

DROP VIEW IF EXISTS pmaq."ACS_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ACS_MUNICIPAL" AS 
 SELECT m.no_municipio,
    tt.nu_ano,
    count(
        CASE
            WHEN tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS visita_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS visita_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS visita_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS visita_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS visita_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS visita_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS visita_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS visita_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS visita_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS visita_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS visita_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS visita_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1 THEN 1
            ELSE NULL::integer
        END) AS hiper_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1 THEN 1
            ELSE NULL::integer
        END) AS diab_dez,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text) AS cad_individual,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_domicilio::text) AS cad_domiciliar,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1 THEN 1
            ELSE NULL::integer
        END) AS can_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1 THEN 1
            ELSE NULL::integer
        END) AS hanse_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1 THEN 1
            ELSE NULL::integer
        END) AS tuber_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1 THEN 1
            ELSE NULL::integer
        END) AS tabaco_dez
   FROM tb_fat_visita_domiciliar
     JOIN tb_dim_tempo tt ON tb_fat_visita_domiciliar.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio m ON tb_fat_visita_domiciliar.co_dim_municipio = m.co_seq_dim_municipio
  GROUP BY m.no_municipio, tt.nu_ano;

ALTER TABLE pmaq."ACS_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ACS_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ACS_MUNICIPAL" TO pmaq;

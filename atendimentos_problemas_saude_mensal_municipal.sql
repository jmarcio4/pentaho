-- View: pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL"

DROP VIEW if exists pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
    tt.nu_ano,
    tb_dim_ciap.no_ciap,
    count(
        CASE
            WHEN tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS marc,
    count(
        CASE
            WHEN tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS sete,
    count(
        CASE
            WHEN tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS outu,
    count(
        CASE
            WHEN tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS dez
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_ciap ON tb_fat_atd_ind_problemas.co_dim_ciap = tb_dim_ciap.co_seq_dim_ciap
     JOIN tb_dim_tempo tt ON tb_fat_atd_ind_problemas.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atd_ind_problemas.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
  GROUP BY tb_dim_municipio.no_municipio, tt.nu_ano, tb_dim_ciap.no_ciap;

ALTER TABLE pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ATENDIMENTO_PROBLEMAS_SAUDE_MENSAL_MUNICIPAL" TO pmaq;

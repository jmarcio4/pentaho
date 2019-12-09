-- View: pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL"

DROP VIEW if exists pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
    tt.nu_ano,
    tb_dim_procedimento.ds_proced,
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
   FROM tb_fat_proced_atend_proced
     JOIN tb_dim_tempo tt ON tb_fat_proced_atend_proced.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_cbo cc ON tb_fat_proced_atend_proced.co_dim_cbo = cc.co_seq_dim_cbo
     JOIN tb_dim_municipio ON tb_fat_proced_atend_proced.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_proced_atend_proced.co_dim_unidade_saude = uu.co_seq_dim_unidade_saude
     JOIN tb_dim_procedimento ON tb_fat_proced_atend_proced.co_dim_procedimento = tb_dim_procedimento.co_seq_dim_procedimento
  GROUP BY tb_dim_procedimento.ds_proced, tb_dim_municipio.no_municipio, tt.nu_ano;

ALTER TABLE pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ATEND_INDIVIDUAL_PROCED_MES_MUNICIPAL" TO pmaq;

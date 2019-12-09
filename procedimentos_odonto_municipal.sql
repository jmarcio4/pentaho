-- View: pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL"

DROP VIEW if exists pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL" AS 
 SELECT tb_dim_procedimento.ds_proced,
    tb_dim_municipio.no_municipio,
    t.nu_ano,
    sum(
        CASE
            WHEN t.nu_mes = 1 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_jan,
    sum(
        CASE
            WHEN t.nu_mes = 2 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_fev,
    sum(
        CASE
            WHEN t.nu_mes = 3 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_mar,
    sum(
        CASE
            WHEN t.nu_mes = 4 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_abr,
    sum(
        CASE
            WHEN t.nu_mes = 5 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_mai,
    sum(
        CASE
            WHEN t.nu_mes = 6 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_jun,
    sum(
        CASE
            WHEN t.nu_mes = 7 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_jul,
    sum(
        CASE
            WHEN t.nu_mes = 8 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_ago,
    sum(
        CASE
            WHEN t.nu_mes = 9 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_set,
    sum(
        CASE
            WHEN t.nu_mes = 10 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_out,
    sum(
        CASE
            WHEN t.nu_mes = 11 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_nov,
    sum(
        CASE
            WHEN t.nu_mes = 12 THEN tb_fat_atend_odonto_proced.qt_procedimentos
            ELSE 0
        END) AS proced_dez
   FROM tb_fat_atend_odonto_proced
     JOIN tb_dim_tempo t ON tb_fat_atend_odonto_proced.co_dim_tempo = t.co_seq_dim_tempo
     JOIN tb_dim_procedimento ON tb_fat_atend_odonto_proced.co_dim_procedimento = tb_dim_procedimento.co_seq_dim_procedimento
     JOIN tb_dim_municipio ON tb_fat_atend_odonto_proced.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
  GROUP BY tb_dim_procedimento.ds_proced, tb_dim_municipio.no_municipio, t.nu_ano;

ALTER TABLE pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."PROCEDIMENTOS_ODONTO_MUNICIPAL" TO pmaq;

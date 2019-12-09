-- View: pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL"

DROP VIEW if exists  pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
    t.nu_ano,
    tb_dim_tipo_atendimento.ds_tipo_atendimento,
    count(
        CASE
            WHEN t.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS jan,
    count(
        CASE
            WHEN t.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS fev,
    count(
        CASE
            WHEN t.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS mar,
    count(
        CASE
            WHEN t.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS abr,
    count(
        CASE
            WHEN t.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS mai,
    count(
        CASE
            WHEN t.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS jun,
    count(
        CASE
            WHEN t.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS jul,
    count(
        CASE
            WHEN t.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS ago,
    count(
        CASE
            WHEN t.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS set,
    count(
        CASE
            WHEN t.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS "out",
    count(
        CASE
            WHEN t.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS nov,
    count(
        CASE
            WHEN t.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS dez,
    count(*) AS anual
   FROM tb_fat_atendimento_odonto
     JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto.co_dim_tempo = t.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atendimento_odonto.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_odonto.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
  GROUP BY tb_dim_municipio.no_municipio, t.nu_ano, tb_dim_tipo_atendimento.ds_tipo_atendimento;

ALTER TABLE pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."TIPO_ATENDIMENTO_ODONTOLOGICO_MES_MUNICIPAL" TO pmaq;

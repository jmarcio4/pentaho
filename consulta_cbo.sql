-- View: pmaq."CONSULTA_CBO"

DROP VIEW if exists pmaq."CONSULTA_CBO";

CREATE OR REPLACE VIEW pmaq."CONSULTA_CBO" AS 
 SELECT m.no_municipio,
    tb_dim_unidade_saude.no_unidade_saude,
    tb_dim_unidade_saude.nu_cnes,
    c.no_cbo,
    c.nu_cbo,
    t.nu_ano,
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
        END) AS dez
   FROM tb_fat_atendimento_individual
     JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
     JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
     JOIN tb_dim_municipio m ON tb_fat_atendimento_individual.co_dim_municipio = m.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = tb_dim_unidade_saude.co_seq_dim_unidade_saude
  GROUP BY m.no_municipio, tb_dim_unidade_saude.no_unidade_saude, tb_dim_unidade_saude.nu_cnes, c.no_cbo, c.nu_cbo, t.nu_ano;

ALTER TABLE pmaq."CONSULTA_CBO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."CONSULTA_CBO" TO postgres;
GRANT ALL ON TABLE pmaq."CONSULTA_CBO" TO pmaq;

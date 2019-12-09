-- View: pmaq."MEDICO_MUNICIPAL"

DROP VIEW if exists pmaq."MEDICO_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."MEDICO_MUNICIPAL" AS 
 SELECT tb_dim_municipio_1.no_municipio,
    tb_dim_cbo.no_cbo,
    count(
        CASE
            WHEN tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS atendimento_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS atendimento_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS atendimento_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS atendimento_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS atendimento_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS atendimento_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS atendimento_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS atendimento_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS atendimento_dez,
    tt.nu_ano
   FROM tb_fat_atendimento_individual
     JOIN tb_dim_tempo tt ON tb_fat_atendimento_individual.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
     JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
     JOIN tb_dim_cbo ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo.co_seq_dim_cbo
  WHERE tb_dim_cbo.no_cbo::text = 'MÉDICO DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::text
  GROUP BY tb_dim_municipio_1.no_municipio, tb_dim_cbo.no_cbo, tt.nu_ano;

ALTER TABLE pmaq."MEDICO_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."MEDICO_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."MEDICO_MUNICIPAL" TO pmaq;

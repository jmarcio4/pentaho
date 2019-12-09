-- View: pmaq."ODONTOLOGIA_MUNICIPAL"

DROP VIEW if exists pmaq."ODONTOLOGIA_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ODONTOLOGIA_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
    tt.nu_ano,
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
        END) AS atendimento_dez
   FROM tb_fat_atendimento_odonto
     JOIN tb_dim_profissional pp ON tb_fat_atendimento_odonto.co_dim_profissional_1 = pp.co_seq_dim_profissional
     JOIN tb_dim_tempo tt ON tb_fat_atendimento_odonto.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_cbo cc ON tb_fat_atendimento_odonto.co_dim_cbo_1 = cc.co_seq_dim_cbo
     JOIN tb_dim_municipio ON tb_fat_atendimento_odonto.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_odonto.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
     JOIN tb_dim_unidade_saude uu ON tb_fat_atendimento_odonto.co_dim_unidade_saude_1 = uu.co_seq_dim_unidade_saude
     JOIN tb_dim_local_atendimento ON tb_fat_atendimento_odonto.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
  WHERE cc.nu_cbo::text = '223293'::text
  GROUP BY tb_dim_municipio.no_municipio, cc.no_cbo, tt.nu_ano;

ALTER TABLE pmaq."ODONTOLOGIA_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ODONTOLOGIA_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ODONTOLOGIA_MUNICIPAL" TO pmaq;

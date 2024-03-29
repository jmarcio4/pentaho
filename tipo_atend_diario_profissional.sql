-- View: pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL"

DROP VIEW if exists pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL";

CREATE OR REPLACE VIEW pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL" AS 
 SELECT m.no_municipio,
    tb_dim_unidade_saude.no_unidade_saude,
    tb_dim_unidade_saude.nu_cnes,
    p.nu_cns,
    p.no_profissional,
    c.no_cbo,
    c.nu_cbo,
    to_char(t.dt_registro::timestamp with time zone, 'YYYY'::text) AS nu_ano,
    to_char(t.dt_registro::timestamp with time zone, 'MM'::text) AS nu_mes,
    tb_dim_tipo_atendimento.ds_tipo_atendimento,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '01'::text THEN 1
            ELSE NULL::integer
        END) AS dia_1,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '02'::text THEN 1
            ELSE NULL::integer
        END) AS dia2,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '03'::text THEN 1
            ELSE NULL::integer
        END) AS dia_3,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '04'::text THEN 1
            ELSE NULL::integer
        END) AS dia_4,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '05'::text THEN 1
            ELSE NULL::integer
        END) AS dia5,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '06'::text THEN 1
            ELSE NULL::integer
        END) AS dia_6,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '07'::text THEN 1
            ELSE NULL::integer
        END) AS dia_7,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '08'::text THEN 1
            ELSE NULL::integer
        END) AS dia_8,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '09'::text THEN 1
            ELSE NULL::integer
        END) AS dia_9,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '10'::text THEN 1
            ELSE NULL::integer
        END) AS dia_10,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '11'::text THEN 1
            ELSE NULL::integer
        END) AS dia_11,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '12'::text THEN 1
            ELSE NULL::integer
        END) AS dia_12,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '13'::text THEN 1
            ELSE NULL::integer
        END) AS dia_13,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '14'::text THEN 1
            ELSE NULL::integer
        END) AS dia_14,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '15'::text THEN 1
            ELSE NULL::integer
        END) AS dia_15,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '16'::text THEN 1
            ELSE NULL::integer
        END) AS dia_16,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '17'::text THEN 1
            ELSE NULL::integer
        END) AS dia_17,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '18'::text THEN 1
            ELSE NULL::integer
        END) AS dia_18,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '19'::text THEN 1
            ELSE NULL::integer
        END) AS dia_19,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '20'::text THEN 1
            ELSE NULL::integer
        END) AS dia_20,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '21'::text THEN 1
            ELSE NULL::integer
        END) AS dia_21,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '22'::text THEN 1
            ELSE NULL::integer
        END) AS dia_22,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '23'::text THEN 1
            ELSE NULL::integer
        END) AS dia_23,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '24'::text THEN 1
            ELSE NULL::integer
        END) AS dia_24,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '25'::text THEN 1
            ELSE NULL::integer
        END) AS dia_25,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '26'::text THEN 1
            ELSE NULL::integer
        END) AS dia_26,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '27'::text THEN 1
            ELSE NULL::integer
        END) AS dia_27,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '28'::text THEN 1
            ELSE NULL::integer
        END) AS dia_28,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '29'::text THEN 1
            ELSE NULL::integer
        END) AS dia_29,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '30'::text THEN 1
            ELSE NULL::integer
        END) AS dia_30,
    count(
        CASE
            WHEN to_char(t.dt_registro::timestamp with time zone, 'DD'::text) = '31'::text THEN 1
            ELSE NULL::integer
        END) AS dia_31,
    count(*) AS mes
   FROM tb_fat_atendimento_individual
     JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
     JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
     JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
     JOIN tb_dim_municipio m ON tb_fat_atendimento_individual.co_dim_municipio = m.co_seq_dim_municipio
     JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
     JOIN tb_dim_unidade_saude ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = tb_dim_unidade_saude.co_seq_dim_unidade_saude
  GROUP BY m.no_municipio, to_char(t.dt_registro::timestamp with time zone, 'YYYY'::text), to_char(t.dt_registro::timestamp with time zone, 'MM'::text), tb_dim_unidade_saude.no_unidade_saude, tb_dim_unidade_saude.nu_cnes, p.nu_cns, p.no_profissional, c.no_cbo, c.nu_cbo, tb_dim_tipo_atendimento.ds_tipo_atendimento;

ALTER TABLE pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL" TO postgres;
GRANT ALL ON TABLE pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL" TO pmaq;
GRANT SELECT ON TABLE pmaq."TIPO_ATEND_DIARIO_PROFISSIONAL" TO relatorio;

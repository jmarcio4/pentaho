-- View: pmaq."ESTATISTICA_MEDICO"

DROP VIEW if exists pmaq."ESTATISTICA_MEDICO";

CREATE OR REPLACE VIEW pmaq."ESTATISTICA_MEDICO" AS 
 SELECT tb_dim_municipio.no_municipio,
    uu.no_unidade_saude,
    uu.nu_cnes,
    cc.no_cbo,
    cc.nu_cbo,
    tt.nu_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text THEN 1
            ELSE NULL::integer
        END) AS pueri_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text THEN 1
            ELSE NULL::integer
        END) AS pre_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text THEN 1
            ELSE NULL::integer
        END) AS diabetes_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text THEN 1
            ELSE NULL::integer
        END) AS hiper_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text THEN 1
            ELSE NULL::integer
        END) AS obesidade_ano,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_ano,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS domi_ano,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo.co_seq_dim_cbo
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS programada_ano,
    ( SELECT count(*) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS atendimento_ano,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text]) THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS demanda_ano,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS agendada_ano,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_unidade_saude u ON tb_fat_atendimento_individual.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON tb_fat_atendimento_individual.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE c.nu_cbo::text = cc.nu_cbo::text AND t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text) AS encaminha_ano
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_cbo cc ON tb_fat_atd_ind_problemas.co_dim_cbo_1 = cc.co_seq_dim_cbo
     JOIN tb_dim_profissional ON tb_fat_atd_ind_problemas.co_dim_profissional_1 = tb_dim_profissional.co_seq_dim_profissional
     JOIN tb_dim_ciap ON tb_fat_atd_ind_problemas.co_dim_ciap = tb_dim_ciap.co_seq_dim_ciap
     JOIN tb_dim_tempo tt ON tb_fat_atd_ind_problemas.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atd_ind_problemas.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_atd_ind_problemas.co_dim_unidade_saude_1 = uu.co_seq_dim_unidade_saude
  WHERE cc.no_cbo::text = 'MÉDICO DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::text
  GROUP BY tb_dim_municipio.no_municipio, uu.no_unidade_saude, uu.nu_cnes, cc.no_cbo, tt.nu_ano, cc.nu_cbo;

ALTER TABLE pmaq."ESTATISTICA_MEDICO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ESTATISTICA_MEDICO" TO postgres;
GRANT ALL ON TABLE pmaq."ESTATISTICA_MEDICO" TO pmaq;

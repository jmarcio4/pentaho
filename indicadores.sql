-- View: pmaq."INDICADORES"

DROP VIEW if exists pmaq."INDICADORES";

CREATE OR REPLACE VIEW pmaq."INDICADORES" AS 
 SELECT tb_dim_municipio.no_municipio,
    uu.no_unidade_saude,
    uu.nu_cnes,
    cc.no_cbo,
    tt.nu_ano,
    tt.nu_mes,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text THEN 1
            ELSE NULL::integer
        END) AS puericultura,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text THEN 1
            ELSE NULL::integer
        END) AS prenatal,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text THEN 1
            ELSE NULL::integer
        END) AS diabetes,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text THEN 1
            ELSE NULL::integer
        END) AS hiperdezembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text THEN 1
            ELSE NULL::integer
        END) AS obesida,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'mm'::text)::integer = tt.nu_mes AND p.nu_cnes::text = uu.nu_cnes::text AND p.nu_cbo_2002::text = cc.nu_cbo::text) AS reuni,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual a
             JOIN tb_dim_tempo t ON a.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_unidade_saude u ON a.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON a.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_cbo c ON a.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text AND t.nu_mes = tt.nu_mes AND c.no_cbo::text = cc.no_cbo::text) AS domi,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual a
             JOIN tb_dim_tempo t ON a.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_unidade_saude u ON a.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_tipo_atendimento ON a.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_cbo c ON a.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text AND t.nu_mes = tt.nu_mes AND c.no_cbo::text = cc.no_cbo::text) AS programada,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = tt.nu_mes THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual a
             JOIN tb_dim_tempo t ON a.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_unidade_saude u ON a.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_cbo c ON a.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text AND t.nu_mes = tt.nu_mes AND c.no_cbo::text = cc.no_cbo::text) AS atendimentos,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual a
             JOIN tb_dim_tempo t ON a.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_unidade_saude u ON a.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_tipo_atendimento ON a.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_cbo c ON a.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text AND t.nu_mes = tt.nu_mes AND c.no_cbo::text = cc.no_cbo::text) AS agendada,
    ( SELECT count(
                CASE
                    WHEN a.st_encaminhamento_serv_special = 1 AND t.nu_mes = tt.nu_mes THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual a
             JOIN tb_dim_tempo t ON a.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_unidade_saude u ON a.co_dim_unidade_saude_1 = u.co_seq_dim_unidade_saude
             JOIN tb_dim_tipo_atendimento ON a.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
             JOIN tb_dim_cbo c ON a.co_dim_cbo_1 = c.co_seq_dim_cbo
          WHERE t.nu_ano = tt.nu_ano AND u.nu_cnes::text = uu.nu_cnes::text AND t.nu_mes = tt.nu_mes AND c.no_cbo::text = cc.no_cbo::text) AS encaminha
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_cbo cc ON tb_fat_atd_ind_problemas.co_dim_cbo_1 = cc.co_seq_dim_cbo
     JOIN tb_dim_ciap ON tb_fat_atd_ind_problemas.co_dim_ciap = tb_dim_ciap.co_seq_dim_ciap
     JOIN tb_dim_tempo tt ON tb_fat_atd_ind_problemas.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atd_ind_problemas.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_atd_ind_problemas.co_dim_unidade_saude_1 = uu.co_seq_dim_unidade_saude
  GROUP BY tb_dim_municipio.no_municipio, uu.no_unidade_saude, uu.nu_cnes, tt.nu_ano, tt.nu_mes, cc.no_cbo, cc.nu_cbo
  ORDER BY uu.no_unidade_saude;

ALTER TABLE pmaq."INDICADORES"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."INDICADORES" TO postgres;
GRANT ALL ON TABLE pmaq."INDICADORES" TO pmaq;

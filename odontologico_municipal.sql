-- View: pmaq."ODONTOLOGICO_MUNICIPAL"

DROP VIEW if exists pmaq."ODONTOLOGICO_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ODONTOLOGICO_MUNICIPAL" AS 
 SELECT mm.no_municipio,
    tt.nu_ano,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jan,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS atendimento_fev,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS atendimento_mar,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS atendimento_abr,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS atendimento_mai,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jun,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS atendimento_jul,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS atendimento_ago,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS atendimento_set,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS atendimento_out,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS atendimento_nov,
    count(
        CASE
            WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta agendada'::character varying::text, 'Consulta no dia'::character varying::text])) AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS atendimento_dez,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS domi_jan,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS domi_fev,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS domi_mar,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS domi_abr,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS domi_mai,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS domi_jun,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS domi_jul,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS domi_ago,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS domi_set,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS domi_out,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS domi_nov,
    count(
        CASE
            WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS domi_dez,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS agendada_jan,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS agendada_fev,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS agendada_mar,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS agendada_abr,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS agendada_mai,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS agendada_jun,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS agendada_jul,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS agendada_ago,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS agendada_set,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS agendada_out,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS agendada_nov,
    count(
        CASE
            WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS agendada_dez,
    count(
        CASE
            WHEN tt.nu_mes = 1 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_jan,
    count(
        CASE
            WHEN tt.nu_mes = 2 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_fev,
    count(
        CASE
            WHEN tt.nu_mes = 3 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_mar,
    count(
        CASE
            WHEN tt.nu_mes = 4 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_abr,
    count(
        CASE
            WHEN tt.nu_mes = 5 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_mai,
    count(
        CASE
            WHEN tt.nu_mes = 6 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_jun,
    count(
        CASE
            WHEN tt.nu_mes = 7 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_jul,
    count(
        CASE
            WHEN tt.nu_mes = 8 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_ago,
    count(
        CASE
            WHEN tt.nu_mes = 9 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_set,
    count(
        CASE
            WHEN tt.nu_mes = 10 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_out,
    count(
        CASE
            WHEN tt.nu_mes = 11 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_nov,
    count(
        CASE
            WHEN tt.nu_mes = 12 AND tb_fat_atendimento_odonto.st_gestante = 1 THEN 1
            ELSE NULL::integer
        END) AS gestante_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_mar,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_abr,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_mai,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_jun,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_ago,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_consulta_odonto.ds_tipo_consulta_odonto::text = 'Primeira consulta odontológica programática'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_odonto tb_fat_atendimento_odonto_1
             JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto_1.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_tipo_consulta_odonto ON tb_fat_atendimento_odonto_1.co_dim_tipo_consulta = tb_dim_tipo_consulta_odonto.co_seq_dim_tipo_cnsulta_odonto
             JOIN tb_dim_municipio m ON tb_fat_atendimento_odonto_1.co_dim_municipio = m.co_seq_dim_municipio
          WHERE t.nu_ano = tt.nu_ano AND m.no_municipio::text = mm.no_municipio::text) AS primeira_dez,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS tratamento_jan,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS tratamento_fev,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS tratamento_mar,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS tratamento_abr,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS tratamento_mai,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS tratamento_jun,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS tratamento_jul,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS tratamento_ago,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS tratamento_set,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS tratamento_out,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS tratamento_nov,
    count(
        CASE
            WHEN tb_fat_atendimento_odonto.st_conduta_tratamento_concluid > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS tratamento_dez
   FROM tb_fat_atendimento_odonto
     JOIN tb_dim_tempo tt ON tb_fat_atendimento_odonto.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio mm ON tb_fat_atendimento_odonto.co_dim_municipio = mm.co_seq_dim_municipio
     JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_odonto.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
     JOIN tb_dim_local_atendimento ON tb_fat_atendimento_odonto.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
  GROUP BY mm.no_municipio, tt.nu_ano;

ALTER TABLE pmaq."ODONTOLOGICO_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ODONTOLOGICO_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ODONTOLOGICO_MUNICIPAL" TO pmaq;

-- View: pmaq."TECNICO_CBO"

DROP VIEW if exists pmaq."TECNICO_CBO";

CREATE OR REPLACE VIEW pmaq."TECNICO_CBO" AS 
 SELECT tb_dim_municipio.no_municipio,
    uu.nu_cnes,
    uu.no_unidade_saude,
    cc.no_cbo,
    cc.nu_cbo,
    tt.nu_ano,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS presao_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS pressao_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS pressao_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS pressao_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS pressao_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS pressao_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS pressao_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS pressao_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS pressao_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS pressao_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS pressao_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS pressao_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS temperatura_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS temperatura_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS temperatura_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS temperatura_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS temperatura_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS temperatura_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS temperatura_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS temperatura_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS temperatura_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS temperatura_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS temperatura_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_temperatura > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS temperatura_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS material_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS material_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS material_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS material_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS material_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS material_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS material_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS material_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS material_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS material_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS material_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_curativo_simple > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS material_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS curativo_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS curativo_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS curativo_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS curativo_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS curativo_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS curativo_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS curativo_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS curativo_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS curativo_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS curativo_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS curativo_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS curativo_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS glicemia_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS glicemia_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS glicemia_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS glicemia_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS glicemia_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS glicemia_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS glicemia_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS glicemia_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS glicemia_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS glicemia_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS glicemia_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS glicemia_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS altura_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS altura_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS altura_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS altura_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS altura_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS altura_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS altura_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS altura_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS altura_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS altura_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS altura_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_altura > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS altura_dez,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS peso_jan,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS peso_fev,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS peso_marc,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS peso_abril,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS peso_maio,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS peso_junho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS peso_julho,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS peso_agosto,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS peso_set,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS peso_out,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS peso_nov,
    count(
        CASE
            WHEN tb_fat_procedimento.nr_proc_consdd_medicao_peso > 0 AND tt.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS peso_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_mar,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_abr,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_mai,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_jun,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_ago,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_proced_atend
             JOIN tb_dim_tempo t ON tb_fat_proced_atend.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo c ON tb_fat_proced_atend.co_dim_cbo = c.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_proced_atend.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_unidade_saude u ON tb_fat_proced_atend.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
             JOIN tb_dim_local_atendimento ON tb_fat_proced_atend.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE t.nu_ano = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS domicilio_dez,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '01'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_jan,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '02'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_fev,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '03'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_mar,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '04'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_abr,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '05'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_mai,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '06'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_jun,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '07'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_jul,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '08'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_ago,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '09'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_set,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '10'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_out,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '11'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_nov,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text ~~ 'REUNIÃO%'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '12'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON p.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_cbo c ON p.nu_cbo_2002::text = c.nu_cbo::text
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tt.nu_ano AND c.nu_cbo::text = cc.nu_cbo::text AND u.nu_cnes::text = uu.nu_cnes::text) AS reuni_dez
   FROM tb_fat_procedimento
     JOIN tb_dim_tempo tt ON tb_fat_procedimento.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_cbo cc ON tb_fat_procedimento.co_dim_cbo = cc.co_seq_dim_cbo
     JOIN tb_dim_municipio ON tb_fat_procedimento.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_procedimento.co_dim_unidade_saude = uu.co_seq_dim_unidade_saude
  WHERE cc.no_cbo::text = ANY (ARRAY['AUXILIAR DE ENFERMAGEM DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::character varying::text, 'TECNICO DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::character varying::text])
  GROUP BY tb_dim_municipio.no_municipio, uu.nu_cnes, uu.no_unidade_saude, cc.no_cbo, cc.nu_cbo, tt.nu_ano;

ALTER TABLE pmaq."TECNICO_CBO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."TECNICO_CBO" TO postgres;
GRANT ALL ON TABLE pmaq."TECNICO_CBO" TO pmaq;

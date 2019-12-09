DROP VIEW if exists pmaq."PROCEDIMENTOS_CONSOLIDADOS_MENSAL_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."PROCEDIMENTOS_CONSOLIDADOS_MENSAL_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
    tt.nu_ano,
    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_pressao_arteria
            ELSE 0
        END) AS pressao_dez,
    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_temperatura
            ELSE 0
        END) AS temperatura_dez,
    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_curativo_simple
            ELSE 0
        END) AS curativo_dez,
    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_mate_exame_labo
            ELSE 0
        END) AS coleta_dez,

    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_glicemia_capila
            ELSE 0
        END) AS glicemia_dez,

    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_medicao_altura
            ELSE 0
        END) AS altura_dez,
    sum(
        CASE
            WHEN tt.nu_mes = 1 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_jan,
    sum(
        CASE
            WHEN tt.nu_mes = 2 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_fev,
    sum(
        CASE
            WHEN tt.nu_mes = 3 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_mar,
    sum(
        CASE
            WHEN tt.nu_mes = 4 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_abr,
    sum(
        CASE
            WHEN tt.nu_mes = 5 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_maio,
    sum(
        CASE
            WHEN tt.nu_mes = 6 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_jun,
    sum(
        CASE
            WHEN tt.nu_mes = 7 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_jul,
    sum(
        CASE
            WHEN tt.nu_mes = 8 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_ago,
    sum(
        CASE
            WHEN tt.nu_mes = 9 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_set,
    sum(
        CASE
            WHEN tt.nu_mes = 10 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_out,
    sum(
        CASE
            WHEN tt.nu_mes = 11 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_nov,
    sum(
        CASE
            WHEN tt.nu_mes = 12 THEN tb_fat_procedimento.nr_proc_consdd_medicao_peso
            ELSE 0
        END) AS peso_dez
   FROM tb_fat_procedimento
     JOIN tb_dim_profissional pp ON tb_fat_procedimento.co_dim_profissional = pp.co_seq_dim_profissional
     JOIN tb_dim_tempo tt ON tb_fat_procedimento.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_cbo cc ON tb_fat_procedimento.co_dim_cbo = cc.co_seq_dim_cbo
     JOIN tb_dim_municipio ON tb_fat_procedimento.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_procedimento.co_dim_unidade_saude = uu.co_seq_dim_unidade_saude
  GROUP BY tb_dim_municipio.no_municipio, tt.nu_ano;

ALTER TABLE pmaq."PROCEDIMENTOS_CONSOLIDADOS_MENSAL_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."PROCEDIMENTOS_CONSOLIDADOS_MENSAL_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."PROCEDIMENTOS_CONSOLIDADOS_MENSAL_MUNICIPAL" TO pmaq;

-- View: pmaq."MEDICO"

DROP VIEW if exists pmaq."MEDICO";

CREATE OR REPLACE VIEW pmaq."MEDICO" AS 
 SELECT tb_dim_municipio.no_municipio,
    tb_dim_unidade_saude.no_unidade_saude,
    tb_dim_unidade_saude.nu_cnes,
    tb_dim_profissional.nu_cns,
    tb_dim_profissional.no_profissional,
    tb_dim_cbo.no_cbo,
    tb_dim_cbo.nu_cbo,
    tb_dim_tempo.nu_ano,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS puerijan,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS puerifev,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS puerimar,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS pueriabr,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS puerimaio,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS puerijunho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS puerijulho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS pueriagosto,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS puerisetembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS puerioutubro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS puerinovembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'PUERICULTURA%'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS pueridezembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS prejan,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS prefev,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS premar,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS preabril,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS premaio,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS prejunho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS prejulho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS preagosto,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS presetembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS preoutubro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS prenovembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'GRAVIDEZ%'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) + count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text = 'PRÉ-NATAL'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS predezembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS diabetesjan,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS diabetesfev,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS diabetesmar,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS diabetesabr,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS diabetesmaio,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS diabetesjunho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS diabetesjulho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS diabetesagosto,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS diabetessetembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS diabetesoutubro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS diabetesnovembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'DIABETES%'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS diabetesdezembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS hiperjan,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS hiperfev,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS hipermar,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS hiperabr,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS hipermaio,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS hiperjunho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS hiperjulho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS hiperagosto,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS hipersetembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS hiperoutubro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS hipernovembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'HIPERTENSÃO%'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS hiperdezembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 1 THEN 1
            ELSE NULL::integer
        END) AS obesidadejan,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 2 THEN 1
            ELSE NULL::integer
        END) AS obesidadefev,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 3 THEN 1
            ELSE NULL::integer
        END) AS obesidademar,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 4 THEN 1
            ELSE NULL::integer
        END) AS obesidadeabr,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 5 THEN 1
            ELSE NULL::integer
        END) AS obesidademaio,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 6 THEN 1
            ELSE NULL::integer
        END) AS obesidadejunho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 7 THEN 1
            ELSE NULL::integer
        END) AS obesidadejulho,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 8 THEN 1
            ELSE NULL::integer
        END) AS obesidadeagosto,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 9 THEN 1
            ELSE NULL::integer
        END) AS obesidadesetembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 10 THEN 1
            ELSE NULL::integer
        END) AS obesidadeoutubro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 11 THEN 1
            ELSE NULL::integer
        END) AS obesidadenovembro,
    count(
        CASE
            WHEN tb_dim_ciap.no_ciap::text ~~ 'OBESIDADE%'::text AND tb_dim_tempo.nu_mes = 12 THEN 1
            ELSE NULL::integer
        END) AS obesidadedezembro,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '01'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_jan,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '02'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_fev,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '03'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_marc,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '04'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_abril,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '05'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_maio,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '06'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_jun,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '07'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_julho,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '08'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_agosto,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '09'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_setemb,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '10'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_outu,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '11'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_nov,
    ( SELECT count(
                CASE
                    WHEN tb_cds_tipo_ativ_col.no_cds_tipo_ativ_col::text = 'REUNIÃO DE EQUIPE'::text AND to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'MM'::text) = '12'::text THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_tipo_ativ_col
             JOIN tb_cds_ficha_ativ_col ON tb_cds_tipo_ativ_col.co_cds_tipo_ativ_col = tb_cds_ficha_ativ_col.tp_cds_ativ_col
             JOIN tb_cds_prof p ON tb_cds_ficha_ativ_col.co_cds_prof_responsavel = p.co_seq_cds_prof
          WHERE to_char(tb_cds_ficha_ativ_col.dt_ativ_col, 'YYYY'::text)::integer = tb_dim_tempo.nu_ano AND p.nu_cns::text = tb_dim_profissional.nu_cns::text) AS reuni_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_abril,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_maio,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_junho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_agosto,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_abril,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_maio,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_junho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_julho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_agosto,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_setem,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_outubro,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_novembro,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_dez,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_jan,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_fev,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_marc,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_abril,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_maio,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_junho,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_julho,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_agosto,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_setemb,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_outubro,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_novembro,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND t.nu_ano = tb_dim_tempo.nu_ano) AS atendimento_dezembro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_jan,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_fev,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_marc,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_abril,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_maio,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_junho,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_julho,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_agosto,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_setem,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_outubro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_novembro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_abr,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_mai,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jun,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_ago,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_dez,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jan,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_fev,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_mar,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_abr,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_mai,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jun,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jul,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_ago,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_set,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_out,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_nov,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_profissional p ON tb_fat_atendimento_individual.co_dim_profissional_1 = p.co_seq_dim_profissional
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_cbo tb_dim_cbo_1 ON tb_fat_atendimento_individual.co_dim_cbo_1 = tb_dim_cbo_1.co_seq_dim_cbo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE p.nu_cns::text = tb_dim_profissional.nu_cns::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_dez
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_cbo ON tb_fat_atd_ind_problemas.co_dim_cbo_1 = tb_dim_cbo.co_seq_dim_cbo
     JOIN tb_dim_profissional ON tb_fat_atd_ind_problemas.co_dim_profissional_1 = tb_dim_profissional.co_seq_dim_profissional
     JOIN tb_dim_ciap ON tb_fat_atd_ind_problemas.co_dim_ciap = tb_dim_ciap.co_seq_dim_ciap
     JOIN tb_dim_tempo ON tb_fat_atd_ind_problemas.co_dim_tempo = tb_dim_tempo.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atd_ind_problemas.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude ON tb_fat_atd_ind_problemas.co_dim_unidade_saude_1 = tb_dim_unidade_saude.co_seq_dim_unidade_saude
  WHERE tb_dim_cbo.no_cbo::text = 'MÉDICO DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::text
  GROUP BY tb_dim_municipio.no_municipio, tb_dim_unidade_saude.no_unidade_saude, tb_dim_unidade_saude.nu_cnes, tb_dim_profissional.nu_cns, tb_dim_profissional.no_profissional, tb_dim_cbo.no_cbo, tb_dim_tempo.nu_ano, tb_dim_cbo.nu_cbo;

ALTER TABLE pmaq."MEDICO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."MEDICO" TO postgres;
GRANT ALL ON TABLE pmaq."MEDICO" TO pmaq;

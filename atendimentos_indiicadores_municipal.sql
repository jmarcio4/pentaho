-- View: pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL"

DROP VIEW IF EXISTS  pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL" AS 
 SELECT tb_dim_municipio.no_municipio,
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
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_abril,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_maio,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_junho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_agosto,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_local_atendimento.ds_local_atendimento::text = 'Domicílio'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_local_atendimento ON tb_fat_atendimento_individual.co_dim_local_atendimento = tb_dim_local_atendimento.co_seq_dim_local_atendimento
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS domi_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_abril,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_maio,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_junho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_julho,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_agosto,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_setem,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_outubro,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_novembro,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada programada / Cuidado continuado'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS programada_dez,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_jan,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_fev,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_marc,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_abril,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_maio,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_junho,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_julho,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_agosto,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_setemb,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_outubro,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_novembro,
    ( SELECT count(
                CASE
                    WHEN t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS atendimento_dezembro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_jan,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_fev,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_marc,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_abril,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_maio,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_junho,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_julho,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_agosto,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_setem,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_outubro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_novembro,
    ( SELECT count(
                CASE
                    WHEN (tb_dim_tipo_atendimento.ds_tipo_atendimento::text = ANY (ARRAY['Atendimento de urgência'::character varying::text, 'Consulta no dia'::character varying::text])) AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS demanda_dez,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jan,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_fev,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_marc,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_abr,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_mai,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jun,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_jul,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'consulta agendada'::text AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_ago,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'consulta agendada'::text AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_set,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_out,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_nov,
    ( SELECT count(
                CASE
                    WHEN tb_dim_tipo_atendimento.ds_tipo_atendimento::text = 'Consulta agendada'::text AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS agendada_dez,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 1 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jan,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 2 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_fev,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 3 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_mar,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 4 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_abr,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 5 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_mai,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 6 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jun,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 7 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_jul,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 8 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_ago,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 9 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_set,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 10 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_out,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 11 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_nov,
    ( SELECT count(
                CASE
                    WHEN tb_fat_atendimento_individual.st_encaminhamento_serv_special = 1 AND t.nu_mes = 12 THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_fat_atendimento_individual
             JOIN tb_dim_tempo t ON tb_fat_atendimento_individual.co_dim_tempo = t.co_seq_dim_tempo
             JOIN tb_dim_municipio tb_dim_municipio_1 ON tb_fat_atendimento_individual.co_dim_municipio = tb_dim_municipio_1.co_seq_dim_municipio
             JOIN tb_dim_tipo_atendimento ON tb_fat_atendimento_individual.co_dim_tipo_atendimento = tb_dim_tipo_atendimento.co_seq_dim_tipo_atendimento
          WHERE tb_dim_municipio_1.no_municipio::text = tb_dim_municipio.no_municipio::text AND tb_dim_tempo.nu_ano = t.nu_ano) AS encaminha_dez
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_ciap ON tb_fat_atd_ind_problemas.co_dim_ciap = tb_dim_ciap.co_seq_dim_ciap
     JOIN tb_dim_tempo ON tb_fat_atd_ind_problemas.co_dim_tempo = tb_dim_tempo.co_seq_dim_tempo
     JOIN tb_dim_municipio ON tb_fat_atd_ind_problemas.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
  WHERE tb_dim_tempo.nu_ano = 2018
  GROUP BY tb_dim_municipio.no_municipio, tb_dim_tempo.nu_ano;

ALTER TABLE pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."ATENDIMENTOS_INDICADORES_MUNICIPAL" TO pmaq;

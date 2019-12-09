-- View: pmaq."CADASTROS_ESUS_ACS"

DROP VIEW if exists pmaq."CADASTROS_ESUS_ACS";

CREATE OR REPLACE VIEW pmaq."CADASTROS_ESUS_ACS" AS 
 SELECT u.nu_cnes,
    prof.nu_cns,
    prof.nu_cbo_2002,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS total_cadastro_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) > 15::double precision AND c.co_sexo = 1 AND p.nu_cns::text = prof.nu_cns::text) AS populacao_feminina_maior15_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 2::double precision AND p.nu_cns::text = prof.nu_cns::text) AS menor_2_menor_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 1::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS menor_1_ano_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) >= 1::double precision AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) <= 4::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS populacao_1_4_anos_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 5::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS menor_5_anos_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof p ON c.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) > 18::double precision AND p.nu_cns::text = prof.nu_cns::text) AS populacao_maior_18_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof p ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM HIPERTENSÃO ARTERIAL?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS hipertensos,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof p ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM DIABETES?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS diabeticos,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof p ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM HANSENÍASE?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS hanseniase,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof p ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = p.co_seq_cds_prof
             JOIN tb_unidade_saude ON p.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM TUBERCULOSE??'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND p.nu_cns::text = prof.nu_cns::text) AS tuberculose
   FROM tb_cidadao
     JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
     JOIN tb_cds_prof prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = prof.co_seq_cds_prof
     JOIN tb_unidade_saude u ON prof.nu_cnes::text = u.nu_cnes::text
     LEFT JOIN tb_cbo ON prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
  WHERE prof.nu_cbo_2002::text = '515105'::text
  GROUP BY u.nu_cnes, prof.nu_cns, prof.nu_cbo_2002;

ALTER TABLE pmaq."CADASTROS_ESUS_ACS"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."CADASTROS_ESUS_ACS" TO postgres;
GRANT ALL ON TABLE pmaq."CADASTROS_ESUS_ACS" TO pmaq;

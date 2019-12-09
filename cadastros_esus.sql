-- View: pmaq."CADASTROS_ESUS"

DROP VIEW if exists pmaq."CADASTROS_ESUS";

CREATE OR REPLACE VIEW pmaq."CADASTROS_ESUS" AS 
 SELECT u.nu_cnes,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS total_cadastro_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) > 15::double precision AND c.co_sexo = 1) AS populacao_feminina_maior15_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 2::double precision) AS menor_2_menor_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 1::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS menor_1_ano_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) >= 1::double precision AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) <= 4::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS populacao_1_4_anos_esus,
    ( SELECT count(
                CASE
                    WHEN date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) < 5::double precision THEN 1
                    ELSE NULL::integer
                END) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS menor_5_anos_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_individual c
             JOIN tb_cidadao tb_cidadao_1 ON c.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON c.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_unidade_saude ON tb_cds_prof.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_unidade_saude.nu_cnes::text = u.nu_cnes::text AND date_part('year'::text, age('now'::text::date::timestamp without time zone, c.dt_nascimento)) > 18::double precision) AS populacao_maior_18_esus,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof prof_1 ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = prof_1.co_seq_cds_prof
             JOIN tb_unidade_saude ON prof_1.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM HIPERTENSÃO ARTERIAL?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS hipertensos,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof prof_1 ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = prof_1.co_seq_cds_prof
             JOIN tb_unidade_saude ON prof_1.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM DIABETES?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS diabeticos,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof prof_1 ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = prof_1.co_seq_cds_prof
             JOIN tb_unidade_saude ON prof_1.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM HANSENÍASE?'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS hanseniase,
    ( SELECT count(*) AS count
           FROM tb_cds_cidadao_resposta
             JOIN tb_pergunta ON tb_pergunta.co_seq_pergunta = tb_cds_cidadao_resposta.co_pergunta
             JOIN tb_cds_cad_individual tb_cds_cad_individual_1 ON tb_cds_cidadao_resposta.co_cds_cad_individual = tb_cds_cad_individual_1.co_seq_cds_cad_individual
             JOIN tb_cidadao tb_cidadao_1 ON tb_cds_cad_individual_1.co_unico_ficha::text = tb_cidadao_1.co_unico_ultima_ficha::text
             JOIN tb_cds_prof prof_1 ON tb_cds_cad_individual_1.co_cds_prof_cadastrante = prof_1.co_seq_cds_prof
             JOIN tb_unidade_saude ON prof_1.nu_cnes::text = tb_unidade_saude.nu_cnes::text
          WHERE tb_cds_cidadao_resposta.st_resposta = 1 AND tb_pergunta.ds_pergunta::text = 'TEM TUBERCULOSE??'::text AND tb_unidade_saude.nu_cnes::text = u.nu_cnes::text) AS tuberculose
   FROM tb_cidadao
     JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
     JOIN tb_cds_prof prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = prof.co_seq_cds_prof
     JOIN tb_unidade_saude u ON prof.nu_cnes::text = u.nu_cnes::text
  GROUP BY u.nu_cnes;

ALTER TABLE pmaq."CADASTROS_ESUS"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."CADASTROS_ESUS" TO postgres;
GRANT ALL ON TABLE pmaq."CADASTROS_ESUS" TO pmaq;

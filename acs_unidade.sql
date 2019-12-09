-- View: pmaq."ACS_UNIDADE"

DROP VIEW IF EXISTS pmaq."ACS_UNIDADE";

CREATE OR REPLACE VIEW pmaq."ACS_UNIDADE" AS 
 SELECT tb_unidade_saude.nu_cnes,
    tb_equipe.no_equipe,
    count(tb_cbo.co_cbo_2002) AS count
   FROM tb_lotacao
     JOIN tb_cbo tb_cbo ON tb_lotacao.co_cbo = tb_cbo.co_cbo
     JOIN tb_equipe tb_equipe ON tb_lotacao.co_equipe = tb_equipe.co_seq_equipe
     JOIN tb_unidade_saude ON tb_lotacao.co_unidade_saude = tb_unidade_saude.co_ator_papel
  WHERE tb_lotacao.st_ativo = 1 AND tb_cbo.no_cbo::text = 'AGENTE COMUNITÁRIO DE SAÚDE'::text
  GROUP BY tb_equipe.no_equipe, tb_unidade_saude.nu_cnes
  ORDER BY tb_equipe.no_equipe;

ALTER TABLE pmaq."ACS_UNIDADE"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ACS_UNIDADE" TO postgres;
GRANT ALL ON TABLE pmaq."ACS_UNIDADE" TO pmaq;

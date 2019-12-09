-- View: pmaq."UNIDADES_ACS"

DROP VIEW if exists pmaq."UNIDADES_ACS";

CREATE OR REPLACE VIEW pmaq."UNIDADES_ACS" AS 
 SELECT u.nu_cnes,
    u.no_unidade_saude,
    tb_cbo.no_cbo
   FROM tb_lotacao
     JOIN tb_ator_papel ON tb_lotacao.co_ator_papel = tb_ator_papel.co_seq_ator_papel
     JOIN tb_cbo ON tb_lotacao.co_cbo = tb_cbo.co_cbo
     JOIN tb_unidade_saude ON tb_lotacao.co_unidade_saude = tb_unidade_saude.co_ator_papel
     JOIN tb_prof ON tb_lotacao.co_prof = tb_prof.co_ator_papel
     JOIN tb_dim_unidade_saude u ON tb_unidade_saude.nu_cnes::text = u.nu_cnes::text
  WHERE tb_lotacao.st_ativo = 1 AND tb_cbo.no_cbo::text = 'AGENTE COMUNITÁRIO DE SAÚDE'::text
  GROUP BY u.nu_cnes, u.no_unidade_saude, tb_cbo.no_cbo;

ALTER TABLE pmaq."UNIDADES_ACS"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."UNIDADES_ACS" TO postgres;
GRANT ALL ON TABLE pmaq."UNIDADES_ACS" TO pmaq;

-- View: pmaq."ODONTO_UNIDADES"

DROP VIEW if exists pmaq."ODONTO_UNIDADES";

CREATE OR REPLACE VIEW pmaq."ODONTO_UNIDADES" AS 
 SELECT tb_unidade_saude.nu_cnes,
    tb_equipe.no_equipe,
    tb_prof.no_profissional AS no_pessoa_fisica,
    tb_prof.nu_cns,
    tb_cbo.co_cbo_2002,
    tb_cbo.no_cbo
   FROM tb_prof
     JOIN tb_lotacao tb_lotacao ON tb_prof.co_ator_papel = tb_lotacao.co_prof
     JOIN rl_prof_municipio rl_prof_municipio ON tb_prof.co_ator_papel = rl_prof_municipio.co_ator_papel
     JOIN tb_ator_papel ON tb_prof.co_ator_papel = tb_ator_papel.co_seq_ator_papel
     JOIN tb_ator ON tb_ator_papel.co_ator = tb_ator.co_seq_ator
     JOIN tb_cbo tb_cbo ON tb_lotacao.co_cbo = tb_cbo.co_cbo
     JOIN tb_equipe ON tb_lotacao.co_equipe = tb_equipe.co_seq_equipe
     JOIN tb_unidade_saude ON tb_equipe.co_unidade_saude = tb_unidade_saude.co_ator_papel
     JOIN tb_localidade ON rl_prof_municipio.co_localidade = tb_localidade.co_localidade
  WHERE tb_lotacao.st_ativo = 1 AND tb_lotacao.st_importada = 1
  ORDER BY tb_equipe.no_equipe;

ALTER TABLE pmaq."ODONTO_UNIDADES"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ODONTO_UNIDADES" TO postgres;
GRANT ALL ON TABLE pmaq."ODONTO_UNIDADES" TO pmaq;

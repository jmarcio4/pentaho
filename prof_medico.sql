-- View: pmaq."PROF_MEDICO"
DROP VIEW if exists pmaq."PROF_MEDICO";

CREATE OR REPLACE VIEW pmaq."PROF_MEDICO" AS 
 SELECT tb_unidade_saude.nu_cnes,
    tb_equipe.no_equipe,
    tb_prof.no_profissional AS no_pessoa_fisica,
    tb_prof.nu_cns,
    tb_cbo.co_cbo_2002,
    tb_cbo.no_cbo,
    tb_lotacao.st_ativo
   FROM tb_prof
     JOIN tb_lotacao tb_lotacao ON tb_prof.co_ator_papel = tb_lotacao.co_prof
     JOIN tb_ator_papel tb_ator_papel ON tb_prof.co_ator_papel = tb_ator_papel.co_seq_ator_papel
     JOIN tb_ator tb_ator ON tb_ator_papel.co_ator = tb_ator.co_seq_ator
     JOIN tb_cbo tb_cbo ON tb_lotacao.co_cbo = tb_cbo.co_cbo
     JOIN tb_equipe tb_equipe ON tb_lotacao.co_equipe = tb_equipe.co_seq_equipe
     JOIN tb_unidade_saude ON tb_equipe.co_unidade_saude = tb_unidade_saude.co_ator_papel
  WHERE tb_lotacao.st_ativo = 1 AND tb_lotacao.st_importada = 1 AND tb_cbo.co_cbo_2002::text = '225142'::text
  GROUP BY tb_unidade_saude.nu_cnes, tb_equipe.no_equipe, tb_prof.no_profissional, tb_prof.nu_cns, tb_cbo.co_cbo_2002, tb_cbo.no_cbo, tb_lotacao.st_ativo
  ORDER BY tb_prof.no_profissional;

ALTER TABLE pmaq."PROF_MEDICO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."PROF_MEDICO" TO postgres;
GRANT ALL ON TABLE pmaq."PROF_MEDICO" TO pmaq;

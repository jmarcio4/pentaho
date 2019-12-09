-- View: pmaq."UNIDADE_SAUDE"

DROP VIEW if exists pmaq."UNIDADE_SAUDE";

CREATE OR REPLACE VIEW pmaq."UNIDADE_SAUDE" AS 
 SELECT ( SELECT tb_localidade.no_localidade AS no_municipio
           FROM tb_localidade
          WHERE tb_localidade.co_localidade = (( SELECT tb_adm_municipal.co_localidade
                   FROM tb_adm_municipal
                 LIMIT 1))) AS no_municipio,
    ( SELECT tb_localidade.co_ibge
           FROM tb_localidade
          WHERE tb_localidade.co_localidade = (( SELECT tb_adm_municipal.co_localidade
                   FROM tb_adm_municipal
                 LIMIT 1))) AS co_ibge,
    tb_unidade_saude.nu_cnes,
    tb_equipe.no_equipe AS no_unidade_saude
   FROM tb_lotacao
     JOIN tb_ator_papel ON tb_lotacao.co_ator_papel = tb_ator_papel.co_seq_ator_papel
     JOIN tb_unidade_saude ON tb_lotacao.co_unidade_saude = tb_unidade_saude.co_ator_papel
     JOIN tb_dim_unidade_saude ON tb_unidade_saude.nu_cnes::text = tb_dim_unidade_saude.nu_cnes::text
     JOIN tb_equipe ON tb_lotacao.co_equipe = tb_equipe.co_seq_equipe
  GROUP BY tb_unidade_saude.nu_cnes, tb_equipe.no_equipe, tb_unidade_saude.co_ator_papel
  ORDER BY tb_equipe.no_equipe;

ALTER TABLE pmaq."UNIDADE_SAUDE"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."UNIDADE_SAUDE" TO postgres;
GRANT ALL ON TABLE pmaq."UNIDADE_SAUDE" TO pmaq;

-- View: pmaq."ANO_TEC_ENFERMAGEM"

DROP VIEW IF EXISTS pmaq."ANO_TEC_ENFERMAGEM";

CREATE OR REPLACE VIEW pmaq."ANO_TEC_ENFERMAGEM" AS 
 SELECT tt.nu_ano
   FROM tb_fat_procedimento
     JOIN tb_dim_tempo tt ON tb_fat_procedimento.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_cbo cc ON tb_fat_procedimento.co_dim_cbo = cc.co_seq_dim_cbo
     JOIN tb_dim_municipio ON tb_fat_procedimento.co_dim_municipio = tb_dim_municipio.co_seq_dim_municipio
     JOIN tb_dim_unidade_saude uu ON tb_fat_procedimento.co_dim_unidade_saude = uu.co_seq_dim_unidade_saude
  WHERE cc.no_cbo::text = ANY (ARRAY['AUXILIAR DE ENFERMAGEM DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::character varying::text, 'TECNICO DA ESTRATÉGIA DE SAÚDE DA FAMÍLIA'::character varying::text])
  GROUP BY tt.nu_ano
  ORDER BY tt.nu_ano DESC
 LIMIT 2;

ALTER TABLE pmaq."ANO_TEC_ENFERMAGEM"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ANO_TEC_ENFERMAGEM" TO postgres;
GRANT ALL ON TABLE pmaq."ANO_TEC_ENFERMAGEM" TO pmaq;

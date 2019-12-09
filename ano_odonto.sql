-- View: pmaq."ANO_ODONTO"

DROP VIEW IF EXISTS pmaq."ANO_ODONTO";

CREATE OR REPLACE VIEW pmaq."ANO_ODONTO" AS 
 SELECT DISTINCT t.nu_ano
   FROM tb_fat_atendimento_odonto
     JOIN tb_dim_profissional ON tb_fat_atendimento_odonto.co_dim_profissional_1 = tb_dim_profissional.co_seq_dim_profissional
     JOIN tb_dim_tempo t ON tb_fat_atendimento_odonto.co_dim_tempo = t.co_seq_dim_tempo;

ALTER TABLE pmaq."ANO_ODONTO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ANO_ODONTO" TO postgres;
GRANT ALL ON TABLE pmaq."ANO_ODONTO" TO pmaq;

-- View: pmaq."ANO"

DROP VIEW IF EXISTS pmaq."ANO";

CREATE OR REPLACE VIEW pmaq."ANO" AS 
 SELECT DISTINCT tb_dim_tempo.nu_ano
   FROM tb_fat_atd_ind_problemas
     JOIN tb_dim_tempo ON tb_fat_atd_ind_problemas.co_dim_tempo = tb_dim_tempo.co_seq_dim_tempo;

ALTER TABLE pmaq."ANO"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ANO" TO postgres;
GRANT ALL ON TABLE pmaq."ANO" TO pmaq;

-- View: pmaq."FILTRO_ANO_MES"

DROP VIEW if exists pmaq."FILTRO_ANO_MES";

CREATE OR REPLACE VIEW pmaq."FILTRO_ANO_MES" AS 
 SELECT tb_dim_tempo.nu_ano,
    tb_dim_tempo.nu_mes
   FROM tb_dim_tempo;

ALTER TABLE pmaq."FILTRO_ANO_MES"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."FILTRO_ANO_MES" TO postgres;
GRANT ALL ON TABLE pmaq."FILTRO_ANO_MES" TO pmaq;

-- View: pmaq.visita_mensal

--DROP VIEW if exists pmaq.visita_mensal;

CREATE OR REPLACE VIEW pmaq.visita_mensal AS 
 SELECT to_date(to_char(tt.nu_mes::double precision, '00'::text) || to_char(tt.nu_ano, '9999'::text), 'MMYYYY'::text) AS mes,
    count(*) AS quantidade
   FROM tb_fat_visita_domiciliar
     JOIN tb_dim_tempo tt ON tb_fat_visita_domiciliar.co_dim_tempo = tt.co_seq_dim_tempo
     JOIN tb_dim_municipio m ON tb_fat_visita_domiciliar.co_dim_municipio = m.co_seq_dim_municipio
  GROUP BY to_date(to_char(tt.nu_mes::double precision, '00'::text) || to_char(tt.nu_ano, '9999'::text), 'MMYYYY'::text)
  ORDER BY to_date(to_char(tt.nu_mes::double precision, '00'::text) || to_char(tt.nu_ano, '9999'::text), 'MMYYYY'::text);

ALTER TABLE pmaq.visita_mensal
  OWNER TO postgres;

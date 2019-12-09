-- View: pmaq."ESTIMA_ESUS"

DROP VIEW if exists pmaq."ESTIMA_ESUS";

CREATE OR REPLACE VIEW pmaq."ESTIMA_ESUS" AS 
 WITH cad_unidades AS (
         SELECT u.nu_cnes,
            ( SELECT sum(tb_informacao.total_pessoas_cadast) AS sum
                   FROM pmaq.tb_informacao
                  WHERE tb_informacao.nu_cnes::text = u.nu_cnes::text
                  GROUP BY tb_informacao.dt_infor
                  ORDER BY tb_informacao.dt_infor DESC
                 LIMIT 1) AS sum_cad
           FROM pmaq.tb_informacao u
          GROUP BY u.nu_cnes
        ), cad_esus AS (
         SELECT count(*) AS count
           FROM tb_fat_cad_individual ft
             JOIN tb_cds_cad_individual c ON ft.nu_uuid_ficha::text = c.co_unico_ficha::text
             JOIN tb_cidadao ON c.co_unico_ficha::text = tb_cidadao.co_unico_ultima_ficha::text
          WHERE ft.co_dim_tipo_saida_cadastro <> ALL (ARRAY[1::bigint, 2::bigint])
        )
 SELECT sum(cad_unidades.sum_cad) AS estimativa,
    cad_esus.count AS esus
   FROM cad_unidades,
    cad_esus
  GROUP BY cad_esus.count;

ALTER TABLE pmaq."ESTIMA_ESUS"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."ESTIMA_ESUS" TO postgres;
GRANT ALL ON TABLE pmaq."ESTIMA_ESUS" TO pmaq;

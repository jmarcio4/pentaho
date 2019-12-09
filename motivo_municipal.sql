-- View: pmaq."MOTIVO_MUNICIPAL"
DROP VIEW if exists pmaq."MOTIVO_MUNICIPAL";

CREATE OR REPLACE VIEW pmaq."MOTIVO_MUNICIPAL" AS 
 SELECT tb_cds_visita_dom_motivo.no_cds_visita_dom_motivo,
    ( SELECT tb_localidade.no_localidade AS no_municipio
           FROM tb_localidade
          WHERE tb_localidade.co_localidade = (( SELECT tb_adm_municipal.co_localidade
                   FROM tb_adm_municipal
                 LIMIT 1))) AS municipio,
    to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::text)::integer AS ano,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '01'::text THEN 1
            ELSE NULL::integer
        END) AS jan,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '02'::text THEN 1
            ELSE NULL::integer
        END) AS fev,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '03'::text THEN 1
            ELSE NULL::integer
        END) AS mar,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '04'::text THEN 1
            ELSE NULL::integer
        END) AS abr,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '05'::text THEN 1
            ELSE NULL::integer
        END) AS mai,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '06'::text THEN 1
            ELSE NULL::integer
        END) AS jun,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '07'::text THEN 1
            ELSE NULL::integer
        END) AS jul,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '08'::text THEN 1
            ELSE NULL::integer
        END) AS ag,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '09'::text THEN 1
            ELSE NULL::integer
        END) AS set,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '10'::text THEN 1
            ELSE NULL::integer
        END) AS outub,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '11'::text THEN 1
            ELSE NULL::integer
        END) AS nov,
    count(
        CASE
            WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::text) = '12'::text THEN 1
            ELSE NULL::integer
        END) AS dez,
    count(tb_cds_visita_dom_motivo.no_cds_visita_dom_motivo) AS total_ano
   FROM rl_cds_visita_dom_motivo
     LEFT JOIN tb_cds_visita_domiciliar ON rl_cds_visita_dom_motivo.co_cds_visita_domiciliar = tb_cds_visita_domiciliar.co_seq_cds_visita_domiciliar
     LEFT JOIN tb_cds_visita_dom_motivo ON rl_cds_visita_dom_motivo.co_cds_visita_dom_motivo = tb_cds_visita_dom_motivo.co_cds_visita_dom_motivo
     LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
  GROUP BY tb_cds_visita_dom_motivo.no_cds_visita_dom_motivo, to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::text)
  ORDER BY tb_cds_visita_dom_motivo.no_cds_visita_dom_motivo;

ALTER TABLE pmaq."MOTIVO_MUNICIPAL"
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq."MOTIVO_MUNICIPAL" TO postgres;
GRANT ALL ON TABLE pmaq."MOTIVO_MUNICIPAL" TO pmaq;

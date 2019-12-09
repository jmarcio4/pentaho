-- View: pmaq.cad_domiciliar

DROP VIEW if exists pmaq.cad_domiciliar;

CREATE OR REPLACE VIEW pmaq.cad_domiciliar AS 
 SELECT ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-01-31 00:00:00'::timestamp without time zone) AS dom_19_jan,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-02-28 00:00:00'::timestamp without time zone) AS dom_19_fev,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-03-31 00:00:00'::timestamp without time zone) AS dom_19_mar,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-04-30 00:00:00'::timestamp without time zone) AS dom_19_abr,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-05-31 00:00:00'::timestamp without time zone) AS dom_19_mai,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-06-30 00:00:00'::timestamp without time zone) AS dom_19_jun,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-07-31 00:00:00'::timestamp without time zone) AS dom_19_jul,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-08-31 00:00:00'::timestamp without time zone) AS dom_19_ago,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-09-30 00:00:00'::timestamp without time zone) AS dom_19_set,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-10-31 00:00:00'::timestamp without time zone) AS dom_19_out,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-11-30 00:00:00'::timestamp without time zone) AS dom_19_nov,
    ( SELECT count(*) AS count
           FROM tb_cds_cad_domiciliar
             JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::text = tb_cds_domicilio.co_unico_ultima_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
          WHERE tb_cds_cad_domiciliar.dt_cad_domiciliar <= '2019-12-31 00:00:00'::timestamp without time zone) AS dom_19_dez;

ALTER TABLE pmaq.cad_domiciliar
  OWNER TO postgres;

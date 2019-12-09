-- View: pmaq.cad_individual

DROP VIEW if exists pmaq.cad_individual;

CREATE OR REPLACE VIEW pmaq.cad_individual AS 
 SELECT ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-01-31 00:00:00'::timestamp without time zone) AS ind_19_jan,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-02-28 00:00:00'::timestamp without time zone) AS ind_19_fev,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-03-31 00:00:00'::timestamp without time zone) AS ind_19_marc,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-04-30 00:00:00'::timestamp without time zone) AS ind_19_abr,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-05-31 00:00:00'::timestamp without time zone) AS ind_19_mai,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-06-30 00:00:00'::timestamp without time zone) AS ind_19_jun,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-07-31 00:00:00'::timestamp without time zone) AS ind_19_jul,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-08-31 00:00:00'::timestamp without time zone) AS ind_19_ago,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-09-30 00:00:00'::timestamp without time zone) AS ind_19_set,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-10-31 00:00:00'::timestamp without time zone) AS ind_19_out,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-11-30 00:00:00'::timestamp without time zone) AS ind_19_nov,
    ( SELECT count(*) AS count
           FROM tb_cidadao
             JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::text = tb_cds_cad_individual.co_unico_ficha::text
             LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
             LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::text = u.nu_cnes::text
             JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::text = p.nu_cns::text
             LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::text = tb_cbo.co_cbo_2002::text
          WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-12-31 00:00:00'::timestamp without time zone) AS ind_19_dez;

ALTER TABLE pmaq.cad_individual
  OWNER TO postgres;

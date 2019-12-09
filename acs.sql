-- View: pmaq."ACS"
DROP VIEW

IF EXISTS pmaq."ACS";
	CREATE
		OR REPLACE VIEW pmaq."ACS" AS

SELECT uu.nu_cnes
	,tb_dim_equipe.no_equipe
	,pp.no_profissional
	,pp.nu_cns
	,tb_dim_cbo.no_cbo
	,tt.nu_ano
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_jan
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_fev
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_mar
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_abr
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_mai
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_jun
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_jul
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_ago
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_set
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_out
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_nov
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2017-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_17_dez
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_jan
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_fev
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_marc
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_abr
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_mai
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_jun
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_jul
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_ago
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_set
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_out
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_nov
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2018-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_18_dez
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_jan
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_fev
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_mar
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_abr
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_mai
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_jun
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_jul
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_ago
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_set
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_out
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_nov
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2017-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_17_dez
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_jan
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_fev
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_mar
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_abr
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_mai
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2018-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_jun
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_jul
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_ago
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_set
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_out
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_nov
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2018-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_18_dez
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2019-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_jan
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2019-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_fev
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2019-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_mar
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2019-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_abr
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro <= '2019-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_mai
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_jun
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_jul
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_ago
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_set
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_out
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_nov
	,(
		SELECT count(distinct(nu_uuid_ficha_origem))
  FROM tb_fat_cad_domiciliar f
  join tb_dim_profissional p on f.co_dim_profissional = p.co_seq_dim_profissional
  join tb_dim_unidade_saude u on f.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
  join tb_dim_tempo t on f.co_dim_tempo = t.co_seq_dim_tempo
WHERE dt_registro  <= '2019-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		GROUP BY p.nu_cns
		) AS dom_19_dez



	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-01-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_jan
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-02-28 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_fev
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-03-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_marc
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-04-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_abr
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-05-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_mai
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-06-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_jun
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-07-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_jul
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-08-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_ago
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-09-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_set
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-10-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_out
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-11-30 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_nov
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_cad_individual.dt_cad_individual <= '2019-12-31 00:00:00'::TIMESTAMP without TIME zone
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS ind_19_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				THEN 1
			ELSE NULL::INTEGER
			END) AS visita_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hipertensao = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hiper_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_diabetes = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS diab_dez
	,(
		SELECT count(*) AS count
		FROM tb_cidadao
		JOIN tb_cds_cad_individual ON tb_cidadao.co_unico_ultima_ficha::TEXT = tb_cds_cad_individual.co_unico_ficha::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_individual.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		WHERE p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS cad_individual
	,(
		SELECT count(*) AS count
		FROM tb_cds_cad_domiciliar
		JOIN tb_cds_domicilio ON tb_cds_cad_domiciliar.co_unico_ficha::TEXT = tb_cds_domicilio.co_unico_domicilio::TEXT
		LEFT JOIN tb_cds_prof ON tb_cds_cad_domiciliar.co_cds_prof_cadastrante = tb_cds_prof.co_seq_cds_prof
		JOIN tb_dim_unidade_saude u ON tb_cds_prof.nu_cnes::TEXT = u.nu_cnes::TEXT
		LEFT JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		LEFT JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS cad_domiciliar
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 1
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_jan
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 2
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_fev
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 3
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_mar
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 4
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_abr
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 5
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_mai
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 6
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_jun
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 7
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_jul
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 8
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_ago
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 9
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_set
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 10
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_out
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 11
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_nov
	,(
		SELECT count(CASE 
					WHEN tb_fat_atvdd_coletiva_int.co_dim_tipo_atividade = 1
						AND t.nu_mes = 12
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_int
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_int.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_int.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_int.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS reuni_dez
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 1
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_jan
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 2
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_fev
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 3
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_marc
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 4
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_abr
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 5
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_mai
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 6
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_jun
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 7
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_jul
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 8
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_ago
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 9
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_set
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 10
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_out
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 11
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_nov
	,(
		SELECT count(CASE 
					WHEN tb_dim_tipo_atividade.co_seq_dim_tipo_atividade = 4
						AND t.nu_mes = 12
						THEN 1
					ELSE NULL::INTEGER
					END) AS count
		FROM tb_fat_atvdd_coletiva_ext
		JOIN tb_dim_profissional p ON tb_fat_atvdd_coletiva_ext.co_dim_profissional = p.co_seq_dim_profissional
		JOIN tb_dim_tempo t ON tb_fat_atvdd_coletiva_ext.co_dim_tempo = t.co_seq_dim_tempo
		JOIN tb_dim_unidade_saude u ON tb_fat_atvdd_coletiva_ext.co_dim_unidade_saude = u.co_seq_dim_unidade_saude
		JOIN tb_dim_tipo_atividade ON tb_fat_atvdd_coletiva_ext.co_dim_tipo_atividade = tb_dim_tipo_atividade.co_seq_dim_tipo_atividade
		WHERE t.nu_ano = tt.nu_ano
			AND p.nu_cns::TEXT = pp.nu_cns::TEXT
			AND u.nu_cnes::TEXT = uu.nu_cnes::TEXT
		) AS palestras_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_cancer = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS can_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_hanseniase = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS hanse_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_pessoa_tuberculose = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tuber_dez
	,count(CASE 
			WHEN tt.nu_mes = 1
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_jan
	,count(CASE 
			WHEN tt.nu_mes = 2
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_fev
	,count(CASE 
			WHEN tt.nu_mes = 3
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_mar
	,count(CASE 
			WHEN tt.nu_mes = 4
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_abr
	,count(CASE 
			WHEN tt.nu_mes = 5
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_mai
	,count(CASE 
			WHEN tt.nu_mes = 6
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_jun
	,count(CASE 
			WHEN tt.nu_mes = 7
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_jul
	,count(CASE 
			WHEN tt.nu_mes = 8
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_ago
	,count(CASE 
			WHEN tt.nu_mes = 9
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_set
	,count(CASE 
			WHEN tt.nu_mes = 10
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_out
	,count(CASE 
			WHEN tt.nu_mes = 11
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_nov
	,count(CASE 
			WHEN tt.nu_mes = 12
				AND tb_fat_visita_domiciliar.st_acomp_tabagista = 1
				THEN 1
			ELSE NULL::INTEGER
			END) AS tabaco_dez
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '01'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_jan
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '02'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_fev
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '03'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_mar
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '04'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_abr
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '05'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_mai
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '06'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_jun
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '07'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_jul
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '08'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_ago
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '09'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_set
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '10'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_out
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '11'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_nov
	,(
		SELECT count(DISTINCT CASE 
					WHEN to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'MM'::TEXT) = '12'::TEXT
						THEN tb_cds_visita_domiciliar.nu_prontuario
					ELSE NULL::CHARACTER VARYING
					END) AS count
		FROM tb_cds_visita_domiciliar
		LEFT JOIN tb_cds_ficha_visita_domiciliar ON tb_cds_visita_domiciliar.co_cds_ficha_visita_domiciliar = tb_cds_ficha_visita_domiciliar.co_seq_cds_ficha_visita_dom
		LEFT JOIN tb_cds_prof ON tb_cds_ficha_visita_domiciliar.co_cds_prof = tb_cds_prof.co_seq_cds_prof
		LEFT JOIN tb_dim_unidade_saude ON tb_cds_prof.nu_cnes::TEXT = tb_dim_unidade_saude.nu_cnes::TEXT
		JOIN tb_dim_profissional p ON tb_cds_prof.nu_cns::TEXT = p.nu_cns::TEXT
		JOIN tb_cbo ON tb_cds_prof.nu_cbo_2002::TEXT = tb_cbo.co_cbo_2002::TEXT
		WHERE tb_cds_visita_domiciliar.nu_prontuario IS NOT NULL
			AND to_char(tb_cds_ficha_visita_domiciliar.dt_ficha, 'YYYY'::TEXT)::INTEGER = tt.nu_ano
			AND p.no_profissional::TEXT = pp.no_profissional::TEXT
		) AS fami_dez
FROM tb_fat_visita_domiciliar
LEFT JOIN tb_dim_cbo ON tb_fat_visita_domiciliar.co_dim_cbo = tb_dim_cbo.co_seq_dim_cbo
JOIN tb_dim_profissional pp ON tb_fat_visita_domiciliar.co_dim_profissional = pp.co_seq_dim_profissional
LEFT JOIN tb_dim_equipe ON tb_fat_visita_domiciliar.co_dim_equipe = tb_dim_equipe.co_seq_dim_equipe
JOIN tb_dim_tempo tt ON tb_fat_visita_domiciliar.co_dim_tempo = tt.co_seq_dim_tempo
JOIN tb_dim_unidade_saude uu ON tb_fat_visita_domiciliar.co_dim_unidade_saude = uu.co_seq_dim_unidade_saude
WHERE tb_dim_cbo.no_cbo::TEXT = 'AGENTE COMUNITÁRIO DE SAÚDE'::TEXT
GROUP BY uu.nu_cnes
	,tb_dim_equipe.no_equipe
	,pp.no_profissional
	,pp.nu_cns
	,tb_dim_cbo.no_cbo
	,tt.nu_ano
ORDER BY uu.nu_cnes
	,tb_dim_equipe.no_equipe
	,pp.no_profissional
	,tb_dim_cbo.no_cbo;

ALTER TABLE pmaq."ACS" OWNER TO postgres;

GRANT ALL
	ON TABLE pmaq."ACS"
	TO postgres;

GRANT ALL
	ON TABLE pmaq."ACS"
	TO pmaq;
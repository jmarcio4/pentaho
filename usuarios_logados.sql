---- View: pmaq.usuarios_logados

DROP VIEW if exists pmaq.usuarios_logados;

CREATE OR REPLACE VIEW pmaq.usuarios_logados AS 
 SELECT count(DISTINCT tb_auditoria_evento.co_usuario) AS usuarios_online
   FROM tb_auditoria_evento
     JOIN tb_usuario ON tb_auditoria_evento.co_usuario = tb_usuario.co_seq_usuario
     JOIN tb_ator ON tb_usuario.co_ator = tb_ator.co_seq_ator
     JOIN tb_ator_papel ON tb_ator.co_seq_ator = tb_ator_papel.co_ator
     JOIN tb_prof ON tb_ator_papel.co_seq_ator_papel = tb_prof.co_ator_papel
     JOIN tb_lotacao ON tb_prof.co_ator_papel = tb_lotacao.co_prof
     JOIN tb_cbo ON tb_lotacao.co_cbo = tb_cbo.co_cbo
     JOIN tb_unidade_saude ON tb_lotacao.co_unidade_saude = tb_unidade_saude.co_ator_papel
     JOIN tb_equipe ON tb_lotacao.co_equipe = tb_equipe.co_seq_equipe
  WHERE tb_auditoria_evento.dt_evento > (now() - '01:00:00'::interval);

ALTER TABLE pmaq.usuarios_logados
  OWNER TO postgres;
GRANT ALL ON TABLE pmaq.usuarios_logados TO postgres;
GRANT ALL ON TABLE pmaq.usuarios_logados TO pmaq;

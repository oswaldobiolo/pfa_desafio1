USE db_fc;
CREATE TABLE modules (
    id integer not null auto_increment,
    nome varchar(200) NULL,
    primary key (id)
);
SET character_set_client = utf8;
SET character_set_connection = utf8;
SET character_set_results = utf8;
SET collation_connection = utf8_general_ci;

INSERT INTO modules (nome) VALUES ('Docker');
INSERT INTO modules (nome) VALUES ('Padrões e técnicas avançadas com Git e Github');
INSERT INTO modules (nome) VALUES ('Integração contínua');
INSERT INTO modules (nome) VALUES ('Fundamentos de Arquitetura de Software');
INSERT INTO modules (nome) VALUES ('Comunicação');

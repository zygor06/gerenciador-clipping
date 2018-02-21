/* TABELA CLIPPING */

CREATE TABLE `db_clipping`.`tb_clipping` (
  `id` INT NOT NULL,
  `data` DATE NOT NULL,
  `numero` INT NOT NULL,
  `ano` INT NOT NULL,
  PRIMARY KEY (`id`));

/* TABELA NOTICIA */

CREATE TABLE `db_clipping`.`tb_noticia` (
  `id` INT NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `descricao` LONGTEXT NULL,
  `link` VARCHAR(255) NOT NULL,
  `imagem` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));

/* TABELA LEGISLACOES */

CREATE TABLE `db_clipping`.`tb_legislacao` (
  `id` INT NOT NULL,
  `descricao` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`));


/* TABELA ORIENTACOES */

CREATE TABLE `db_clipping`.`tb_orientacoes` (
  `id` INT NOT NULL,
  `descricao` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`));
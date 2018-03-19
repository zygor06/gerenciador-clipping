-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Mar-2018 às 15:39
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_clipping`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `links`
--

INSERT INTO `links` (`id`, `titulo`, `link`, `data`, `created_at`, `updated_at`, `tipo`) VALUES
(2, 'Governo vai oferecer R$ 10 bilhões a prefeitos para investimentos em segurança', 'https://g1.globo.com/politica/blog/valdo-cruz/post/2018/03/05/governo-vai-oferecer-r-10-bilhoes-a-prefeitos-para-investimentos-em-seguranca.ghtml', '2018-03-05', '2018-03-14 18:55:02', '2018-03-14 18:55:02', 'segurança'),
(4, 'Senado aprova Plano Nacional de Enfrentamento ao Homicídio de Jovens', 'https://www12.senado.leg.br/noticias/materias/2018/03/13/senado-aprova-plano-nacional-de-enfrentamento-ao-homicidio-de-jovens', '2018-03-13', '2018-03-15 20:45:21', '2018-03-15 20:45:21', 'segurança'),
(5, 'Câmara aprova regime de urgência para projeto que cria Sistema Único de Segurança Pública', 'https://g1.globo.com/politica/noticia/camara-aprova-regime-de-urgencia-para-projeto-que-cria-sistema-unico-de-seguranca-publica.ghtml', '2018-03-14', '2018-03-15 20:46:28', '2018-03-15 20:46:28', 'segurança'),
(7, 'Brasil gasta mais com segurança pública do que com pequisa, diz CNI', 'https://istoe.com.br/brasil-gasta-mais-com-seguranca-publica-do-que-com-pequisa-diz-cni/', '2018-03-05', '2018-03-15 20:50:29', '2018-03-15 20:50:29', 'segurança'),
(8, 'PF abre Pão Nosso contra corrupção no sistema prisional do Rio', 'https://www.em.com.br/app/noticia/politica/2018/03/13/interna_politica,943726/pf-abre-pao-nosso-contra-corrupcao-no-sistema-prisional-do-rio.shtml', '2018-03-13', '2018-03-15 20:56:07', '2018-03-15 20:56:07', 'segurança'),
(10, 'Desafio à intervenção: quanto vale uma vida no Rio de Janeiro?', 'https://exame.abril.com.br/blog/instituto-millenium/desafio-a-intervencao-quanto-vale-uma-vida-no-rio-de-janeiro/', '2018-03-15', '2018-03-15 21:16:27', '2018-03-15 21:16:27', 'segurança'),
(11, 'Com fronteira entregue ao crime, Temer corta R$ 60,5 milhões do Sisfron', 'https://www.campograndenews.com.br/cidades/interior/com-fronteira-entregue-ao-crime-temer-corta-rs-60-5-milhoes-do-sisfron', '2018-03-14', '2018-03-15 21:19:24', '2018-03-15 21:19:24', 'defesa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_22_224333_create_clippings_table', 1),
(4, '2018_02_22_224343_create_noticias_table', 1),
(5, '2018_02_22_224406_create_orientacaos_table', 1),
(6, '2018_02_22_224428_create_legislacaos_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orientacoes_rascunhos`
--

CREATE TABLE `orientacoes_rascunhos` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `clipping_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orientacoes_rascunhos`
--

INSERT INTO `orientacoes_rascunhos` (`id`, `titulo`, `link`, `tipo`, `clipping_id`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Memorando-Circular 35/2017-Segecex', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:13665977514403:T:::P17_XCOD_REL_DET:6142', 11, 7, '2018-03-15 18:22:57', '2018-03-15 18:22:57', 1),
(7, 'Benefícios de controle - Volume de Recursos Fiscalizados (VRF)', 'http://portal.tcu.gov.br/controle-externo/procedimentos-e-normas-processuais/informativo-orientar/beneficios-de-controle-volume-de-recursos-fiscalizados-vrf.htm', 9, 7, '2018-03-15 18:23:15', '2018-03-15 18:23:15', 1),
(8, 'Memorando-Circular 36/2017-Segecex, de 22/06/2017.', 'https://contas.tcu.gov.br/ords/f?p=434:17:15336360132810:T:::P17_XCOD_REL_DET:6162', 11, 9, '2018-03-15 18:23:51', '2018-03-15 18:23:51', 1),
(9, 'Acompanhamento em uma página', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A8401590388B0062561', 2, 9, '2018-03-15 18:24:05', '2018-03-15 18:24:05', 1),
(10, 'Fluxo do acompanhamento do tipo Acom', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039CFEEE5F8F', 2, 9, '2018-03-15 18:24:18', '2018-03-15 18:24:18', 1),
(11, 'AGU atualiza modelos de editais de licitações utilizados pela administração pública', 'http://www.agu.gov.br/page/content/detail/id_conteudo/578607', 7, 10, '2018-03-15 18:31:06', '2018-03-15 18:31:06', 1),
(12, 'Portaria-Segecex nº 29/2010 - disciplina a realização de inspeções', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82AA233CE3', 5, 10, '2018-03-15 18:31:30', '2018-03-15 18:31:30', 1),
(13, 'Portaria-Adplan 2/2010 - orientação para FOC', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D818571462B', 4, 10, '2018-03-15 18:31:47', '2018-03-15 18:31:47', 1),
(14, 'Padrões de Levantamento', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D81DFAD485C', 6, 11, '2018-03-15 18:32:09', '2018-03-15 18:32:09', 1),
(15, 'Memorando-Circular 38/2017-Segecex', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:103088453979621:T:::P17_XCOD_REL_DET:6182', 11, 11, '2018-03-15 18:32:24', '2018-03-15 18:32:24', 1),
(16, 'Padrões de Auditoria de Conformidade (PAC)', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A259ADCD370159B2FD99B04042', 3, 12, '2018-03-15 18:32:39', '2018-03-15 18:32:39', 1),
(17, 'Orientações para Auditoria de Conformidade (OAC)', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A259ADCD370159B3013CB05B41', 3, 12, '2018-03-15 18:33:02', '2018-03-15 18:33:02', 1),
(18, 'Matriz Padrão de Planejamento - Contratos', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D825A880877', 3, 13, '2018-03-15 18:33:28', '2018-03-15 18:33:28', 1),
(19, 'Matriz Padrão de Possíveis Achados - Contratos', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8265E21F30', 3, 13, '2018-03-15 18:33:40', '2018-03-15 18:33:40', 1),
(20, 'Roteiro de verificação de matrizes', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8269252726', 3, 13, '2018-03-15 18:33:52', '2018-03-15 18:33:52', 1),
(23, 'Matriz Padrão de Planejamento - Convênios PI 507/11', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82558D7980', 3, 14, '2018-03-15 18:34:46', '2018-03-15 18:34:46', 1),
(24, 'Matriz Padrão de Possíveis Achados - Convênios PI 507/11', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D825EAA13EF', 3, 14, '2018-03-15 18:35:04', '2018-03-15 18:35:04', 1),
(25, 'Roteiro de verificação do relatório de auditoria', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D826A622AE5', 3, 15, '2018-03-15 18:35:43', '2018-03-15 18:35:43', 1),
(26, 'Matriz de responsabilização - Orientações para Auditoria de Conformidade', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82677C232B', 3, 15, '2018-03-15 18:35:56', '2018-03-15 18:35:56', 1),
(27, 'Memorando-Circular 42/2017-Segecex, de 17/08/2017', 'https://contas.tcu.gov.br/ords/f?p=434:17:13864534387070:T:::P17_XCOD_REL_DET:6302', 11, 15, '2018-03-15 18:36:10', '2018-03-15 18:36:10', 1),
(28, 'Memorando-Circular 44/2017-Segecex, de 22/08/2017.', 'https://contas.tcu.gov.br/ords/f?p=434:17:4051614591536:T:::P17_XCOD_REL_DET:6402', 11, 15, '2018-03-15 18:36:18', '2018-03-15 18:36:18', 1),
(29, 'Alteração de modelo de comunicação de citação por omissão no dever de prestar contas.', 'https://contas.tcu.gov.br/ords/f?p=434:17:198446760996:T:::P17_XCOD_REL_DET:6362', 11, 16, '2018-03-15 18:43:19', '2018-03-15 18:43:19', 1),
(30, 'Adequação das propostas de envio de cópia das deliberações do Tribunal.', 'https://contas.tcu.gov.br/ords/f?p=434:17:5362344971377:T:::P17_XCOD_REL_DET:6322', 11, 16, '2018-03-15 18:43:31', '2018-03-15 18:43:31', 1),
(31, 'Manual de Auditoria Operaciona', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8277322DA6', 8, 16, '2018-03-15 18:43:52', '2018-03-15 18:43:52', 1),
(32, 'Roteiro de Auditoria de Gestão de Riscos', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A25EC59C0F015F06AC08502C15', 10, 16, '2018-03-15 18:44:07', '2018-03-15 18:44:07', 1),
(33, 'Orientação às unidades técnicas do TCU para que, nas prestações de contas anuais e em trabalhos de fiscalização, verifiquem a situação expressa no item 9.7 do Acórdão 1960/2017-TCU-Plenário.', 'https://contas.tcu.gov.br/ords/f?p=434:17:15156622008934:T:::P17_XCOD_REL_DET:6422', 11, 17, '2018-03-15 18:44:36', '2018-03-15 18:44:36', 1),
(34, 'Ampliação de acesso pelas partes e seus representantes legais às peças de processos de controle externo não-sigilosos.', 'https://contas.tcu.gov.br/ords/f?p=434:17:11630191484546:T:::P17_XCOD_REL_DET:6523', 11, 17, '2018-03-15 18:44:47', '2018-03-15 18:44:47', 1),
(35, 'Acórdão 2321/2017-TCU-Plenário (TC 010.336/2017-6). Solicitação do Congresso Nacional (SCN).', 'https://contas.tcu.gov.br/ords/f?p=434:17:11630191484546:T:::P17_XCOD_REL_DET:6523', 11, 18, '2018-03-15 18:51:45', '2018-03-15 18:51:45', 1),
(36, 'Solicitação de emissão de passagens aéreas sem a antecedência mínima.', 'https://contas.tcu.gov.br/ords/f?p=434:17:11630191484546:T:::P17_XCOD_REL_DET:6523', 11, 18, '2018-03-15 18:52:12', '2018-03-15 18:52:12', 1),
(39, 'Manual de Acompanhamento publicado', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039C79175D05', 2, 6, '2018-03-15 20:08:57', '2018-03-17 01:28:25', 1),
(75, 'Memorando‐Circular 31/2017‐Segecex, de 02/06/2017', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:4913232562061:T:::P17_XCOD_REL_DET:6082', 11, 6, '2018-03-17 01:31:53', '2018-03-17 01:31:53', 1),
(76, 'Fluxo do Acompanhamento do tipo Racom', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039CFEEE5F8F', 2, 6, '2018-03-17 01:32:17', '2018-03-17 01:32:17', 1),
(99, 'IN TCU 76/2016', 'http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A25A29D4FC015A3842667131BE', 1, 2, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(100, 'Memorando‐Circular 29/2017', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:107248173124840:T:::P17_XCOD_REL_DET:6022', 1, 4, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(101, 'MEDIDA PROVISÓRIA Nº 781, DE 23 DE MAIO DE 2017', 'http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2017/Mpv/mpv781.htm#art3', 1, 5, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(102, 'Memorando-Circular 39/2017-Segecex, de 03/08/2017. ', 'https://contas.tcu.gov.br/ords/f?p=434:17:117507398011059:T:::P17_XCOD_REL_DET:6202', 11, 14, '2018-03-19 18:22:48', '2018-03-19 18:24:32', 1),
(103, 'Memorando-Circular 40/2017-Segecex, de 04/08/2017. ', 'https://contas.tcu.gov.br/ords/f?p=434:17:100485635963932:T:::P17_XCOD_REL_DET:6222', 11, 14, '2018-03-19 18:22:48', '2018-03-19 18:24:50', 1),
(104, 'Memorando-Circular 43/2017-Segecex, de 22/08/2017.', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:106369880398007:T:::P17_XCOD_REL_DET:6362', 11, 16, '2018-03-19 18:22:48', '2018-03-19 18:27:56', 1),
(105, 'Memorando-Circular 45/2017-Segecex, de 25/08/2017', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:106369880398007:T:::P17_XCOD_REL_DET:6322', 11, 16, '2018-03-19 18:22:48', '2018-03-19 18:28:23', 1),
(106, 'Memorando 56/2017 ', 'https://contas.tcu.gov.br/ords/f?p=434:17:23791100823638:T:::P17_XCOD_REL_DET:6522', 1, 18, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(107, 'Memorando 53/2017 ', 'https://contas.tcu.gov.br/ords/f?p=434:17:6762817762221:T:::P17_XCOD_REL_DET:6482', 1, 18, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(108, 'Memorando-Circular 1/2018-Segecex', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:115334449537197:T:::P17_XCOD_REL_DET:6723', 1, 19, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0),
(109, 'Memorando-Circular 10/2018-Segecex', 'https://contas.tcu.gov.br/pls/apex/f?p=434:17:115334449537197:T:::P17_XCOD_REL_DET:6822', 1, 19, '2018-03-19 18:22:48', '2018-03-19 18:22:48', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pesquisa_noticias`
--

CREATE TABLE `pesquisa_noticias` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pesquisa_noticias`
--

INSERT INTO `pesquisa_noticias` (`id`, `texto`, `tipo`, `created_at`, `updated_at`) VALUES
(2, 'carro de combate guarani', 'defesa', '2018-03-15 19:50:46', '2018-03-15 19:50:46'),
(3, 'intervenção rio', 'seguranca', '2018-03-15 20:30:08', '2018-03-15 20:30:08'),
(4, 'sistema prisional', 'seguranca', '2018-03-15 20:30:26', '2018-03-15 20:30:26'),
(5, 'aquisição policia rodoviária', 'seguranca', '2018-03-15 20:31:07', '2018-03-15 20:31:07'),
(6, 'plano nacional de segurança pública', 'seguranca', '2018-03-15 20:31:38', '2018-03-15 20:31:38'),
(7, 'policia faixa de fronteira', 'seguranca', '2018-03-15 20:32:23', '2018-03-15 20:32:23'),
(8, 'aquisição de fragata marinha', 'defesa', '2018-03-15 20:33:11', '2018-03-15 20:33:11'),
(9, 'caça gripen', 'defesa', '2018-03-15 20:33:33', '2018-03-15 20:33:33'),
(10, 'kc 390 fab', 'defesa', '2018-03-15 20:34:13', '2018-03-15 20:34:13'),
(11, 'astros 2020 exército', 'defesa', '2018-03-15 20:34:35', '2018-03-15 20:34:35'),
(12, 'projetos estratégicos de defesa', 'defesa', '2018-03-15 20:35:11', '2018-03-15 20:35:11'),
(13, 'sisfron', 'defesa', '2018-03-15 20:38:35', '2018-03-15 20:38:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `processos`
--

CREATE TABLE `processos` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clipping`
--

CREATE TABLE `tb_clipping` (
  `id` int(10) UNSIGNED NOT NULL,
  `data` date NOT NULL,
  `numero` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_clipping`
--

INSERT INTO `tb_clipping` (`id`, `data`, `numero`, `ano`, `autor`, `created_at`, `updated_at`) VALUES
(2, '2018-03-16', 1, 1, 'Hygor Christian', '2018-03-05 18:46:48', '2018-03-17 02:13:49'),
(4, '2017-05-31', 2, 1, 'Hygor Christian', '2018-03-05 19:09:17', '2018-03-05 19:09:17'),
(5, '2017-06-07', 3, 1, 'Hygor Christian', '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(6, '2017-06-16', 4, 1, 'Hygor Christian', '2018-03-05 20:08:10', '2018-03-05 21:00:46'),
(7, '2017-07-07', 5, 1, 'Hygor Christian', '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(9, '2017-07-18', 6, 1, 'Hygor Christian', '2018-03-05 21:44:31', '2018-03-05 21:44:31'),
(10, '2017-07-24', 7, 1, 'Hygor Christian', '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(11, '2017-08-01', 8, 1, 'Hygor Christian', '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(12, '2017-08-16', 9, 1, 'Hygor Christian', '2018-03-05 22:22:29', '2018-03-05 22:22:29'),
(13, '2017-08-30', 10, 1, 'Hygor Christian', '2018-03-14 18:02:26', '2018-03-14 18:02:48'),
(14, '2017-09-12', 11, 1, 'Hygor Christian', '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(15, '2017-10-20', 12, 1, 'Hygor Christian', '2018-03-14 18:20:35', '2018-03-14 18:20:35'),
(16, '2017-10-30', 13, 1, 'Hygor Christian', '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(17, '2017-11-14', 14, 1, 'Hygor Christian', '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(18, '2018-03-15', 15, 1, 'Hygor Christian', '2018-03-15 18:51:33', '2018-03-15 18:51:33'),
(19, '2018-03-16', 16, 2, 'Helton Onesio de Souza', '2018-03-16 21:27:41', '2018-03-16 21:53:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_legislacao`
--

CREATE TABLE `tb_legislacao` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clipping_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_legislacao`
--

INSERT INTO `tb_legislacao` (`id`, `texto`, `clipping_id`, `created_at`, `updated_at`) VALUES
(2, '<p>TC-018.922/2013-9 (RELAT&Oacute;RIO DE<br>LEVANTAMENTO) - ACORD&Atilde;O N&deg;<br>970/2017 - TCU - Plen&aacute;rio<br>TC-020.641/2010-9 (PRESTA&Ccedil;&Atilde;O DE<br>CONTAS - Exerc&iacute;cio: 2009) - ACORD&Atilde;O N&deg;<br>3858/2017 - TCU - C&acirc;mara<br>TC-027.715/2015-9 (PRESTA&Ccedil;&Atilde;O DE<br>CONTAS - Exerc&iacute;cio: 2014) - ACORD&Atilde;O N&deg;<br>3953/2017 - TCU - 2&ordf; C&acirc;mara</p>', 2, '2018-03-05 18:46:48', '2018-03-05 18:46:48'),
(4, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:107248173124840:T:::P17_XCOD_REL_DET:6043" rel="noopener noreferrer" target="_blank">Portaria‐Segecex</a> 10/2017, de 19/05/2017. Aprova o detalhamento das metas da Secretaria‐Geral de Controle Externo ﴾Segecex﴿ e das unidades a ela vinculadas para o Plano Diretor de 2017 e estabelece a forma de c&aacute;lculo do resultado do alcance das metas.</p>', 4, '2018-03-05 19:09:18', '2018-03-05 19:09:18'),
(5, '<p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:101903235407456:T:::P17_XCOD_REL_DET:6042" rel="noopener noreferrer" target="_blank">PORTARIA‐SEGECEX N&ordm; 9, DE 18 DE MAIO DE 2017</a> ‐ O SECRET&Aacute;RIO‐GERAL DE CONTROLE EXTERNO, no uso de suas atribui&ccedil;&otilde;es e tendo em vista o disposto no art. 34, inciso III, da Resolu&ccedil;&atilde;o‐TCU n&ordm; 28</p>', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(6, '<p>AC&Oacute;RD&Atilde;O N&ordm; 4829/2017 ‐ TC 016.863/2014‐3&nbsp;</p><p>AC&Oacute;RD&Atilde;O N&ordm; 4906/2017 ‐ TC‐024.661/2013‐9 ﴾PRESTA&Ccedil;&Atilde;O DE CONTAS ‐ Exerc&iacute;cio: 2012﴿&nbsp;</p><p>AC&Oacute;RD&Atilde;O N&ordm; 4953/2017 ‐ TC‐024.903/2014‐0 ﴾TOMADA DE CONTAS ESPECIAL﴿</p>', 6, '2018-03-05 20:08:11', '2018-03-05 20:08:11'),
(7, '<p>ATA N&ordm; 21, DE 14 DE JUNHO DE 2017 Processo TC-014.728/2011-7 (MONITORAMENTO) - AC&Oacute;RD&Atilde;O N&ordm; 1209/2017 - TCU &ndash; Plen&aacute;rio</p>', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(8, '<p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_24.pdf" rel="noopener noreferrer" target="_blank">ATA N&ordm; 24, DE 28 DE JUNHO DE 2017</a></p><p>Processo TC-026.341/2015-8 (REPRESENTA&Ccedil;&Atilde;O) - AC&Oacute;RD&Atilde;O N&ordm; 1369/2017 - TCU &ndash; Plen&aacute;rio&nbsp;</p><p>Processo TC-004.389/2017-4 (REPRESENTA&Ccedil;&Atilde;O) - AC&Oacute;RD&Atilde;O N&ordm; 1377/2017 - TCU - Plen&aacute;rio&nbsp;</p><p>Processo TC 002.857/2014-6 - AC&Oacute;RD&Atilde;O N&ordm; 1343/2017 &ndash; TCU &ndash; Plen&aacute;rio</p>', 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(9, '<p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82AA233CE3" rel="noopener noreferrer" target="_blank">Portaria-Segecex n&ordm; 29/2010 - disciplina a realiza&ccedil;&atilde;o de inspe&ccedil;&otilde;es </a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D818571462B" rel="noopener noreferrer" target="_blank">Portaria-Adplan 2/2010 - orienta&ccedil;&atilde;o para FOC</a></p>', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(10, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:103088453979621:T:::P17_XCOD_REL_DET:6182" rel="noopener noreferrer" target="_blank">Memorando-Circular 38/2017</a> - Segecex, de 17/07/2017. Orienta&ccedil;&otilde;es para atua&ccedil;&atilde;o em situa&ccedil;&otilde;es que envolvem determina&ccedil;&otilde;es para desconto em folha fundamentadas no art. 28, inc. I, da Lei 8443/1992.</p>', 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(11, '<p>AC&Oacute;RD&Atilde;O N&ordm; 1467/2017 - TCU - Plen&aacute;rio TC-041.018/2012-5 (TOMADA DE CONTAS ESPECIAL)</p>', 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(12, '<p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8269252726" rel="noopener noreferrer" target="_blank">Roteiro de verifica&ccedil;&atilde;o de matrizes</a></p>', 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(13, '<p>AC&Oacute;RD&Atilde;O N&ordm; 1814/2017 &ndash; TCU &ndash; Plen&aacute;rio Processo TC-015.604/2007-6 (TOMADA DE CONTAS ESPECIAL)&nbsp;</p><p>AC&Oacute;RD&Atilde;O N&ordm; 1835/2017 &ndash; TCU &ndash; Plen&aacute;rio Processo TC 029.536/2016-2&nbsp;</p><p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_33.pdf" rel="noopener noreferrer" target="_blank">[Ata 33]</a></p>', 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(14, '<p>AC&Oacute;RD&Atilde;O N&ordm; 2114/2017 - TCU - Plen&aacute;rio - Processo TC-007.886/2003-5 (Tomada de Contas Simplificada - Exerc&iacute;cio: 2002)&nbsp;</p><p>AC&Oacute;RD&Atilde;O N&ordm; 2148/2017 &ndash; TCU &ndash; Plen&aacute;rio - Processo TC 005.866/2010-3&nbsp;</p><p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_39.pdf" rel="noopener noreferrer" target="_blank">Ata 39 de 2017</a></p>', 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(15, '<p>AC&Oacute;RD&Atilde;O 2292/2017 &ndash; TCU &ndash; Plen&aacute;rio - Processo TC 007.973/2003-2</p><p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_41.pdf" rel="noopener noreferrer" target="_blank">Ata 41 - 201</a></p>', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(16, '<p>AC&Oacute;RD&Atilde;O N&ordm; 2335/2017 - TCU - Plen&aacute;rio Processo TC-015.604/2007-6 (TOMADA DE CONTAS ESPECIAL) -<a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_42.pdf" rel="noopener noreferrer" target="_blank"> Ata 42 - 2017</a>&nbsp;</p><p>AC&Oacute;RD&Atilde;O N&ordm; 2427/2017 - TCU - Plen&aacute;rio Processo TC-018.852/2013-0 (TOMADA DE CONTAS ESPECIAL) -<a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_44.pdf" rel="noopener noreferrer" target="_blank"> Ata 44 - 2017</a></p>', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(17, '<p>AC&Oacute;RD&Atilde;O N&ordm; 2479/2017 - TCU - Plen&aacute;rio Processo TC-005.866/2010-3 (TOMADA DE CONTAS ESPECIAL) -<a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_45.pdf#page=11" rel="noopener noreferrer" target="_blank"> Ata 45 - 2017 Pag. 11 </a></p><p>AC&Oacute;RD&Atilde;O N&ordm; 2466/2017 &ndash; TCU &ndash; Plen&aacute;rio Processo TC 006.734/2004-7 - <a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2017_45.pdf#page=43" rel="noopener noreferrer" target="_blank">Ata 45 - 2017 Pag. 43</a></p>', 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34'),
(18, '<p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2018_2.pdf" rel="noopener noreferrer" target="_blank">Ata 2 - 2018</a></p><p>AC&Oacute;RD&Atilde;O N&ordm; 77/2018 - TCU - Plen&aacute;rio - Processo TC-005.866/2010-3 Tomada de Contas Especial</p><p><a href="http://www.tcu.gov.br/Consultas/Juris/Docs/CONSES/TCU_ATA_0_N_2018_5.pdf" rel="noopener noreferrer" target="_blank">Ata 5 - 2018</a></p><p>AC&Oacute;RD&Atilde;O N&ordm; 256/2018 - TCU - Plen&aacute;rio - Processo TC-027.943/2010-0 (AUDITORIA)</p>', 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_noticia`
--

CREATE TABLE `tb_noticia` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clipping_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_noticia`
--

INSERT INTO `tb_noticia` (`id`, `titulo`, `descricao`, `link`, `imagem`, `clipping_id`, `created_at`, `updated_at`) VALUES
(10, '50 milhões de pessoas já perderam alguém assassinado no Brasil', '<p>Pesquisa do F&oacute;rum Brasileiro de Seguran&ccedil;a P&uacute;blica mostra que um em cada tr&ecirc;s brasileiros j&aacute; perdeu amigo ou parente v&iacute;tima de homic&iacute;dio ou latroc&iacute;nio</p>', 'https://veja.abril.com.br/brasil/50-milhoes-de-pessoas-ja-perderam-alguem-assassinado-no-brasil/', 'https://abrilveja.files.wordpress.com/2017/04/divulgacao-policia-gaeco-rj-ilha-governador-vans.jpg?quality=70&strip=info&crop=true&w=680&h=453', 2, '2018-03-05 18:46:48', '2018-03-17 02:13:49'),
(11, 'Depen busca soluções inovadoras para construções das penitenciárias federais', '<p>MJSP publica chamamento p&uacute;blico para a ind&uacute;stria da constru&ccedil;&atilde;o civil em busca de solu&ccedil;&otilde;es inovadoras que permitam a evolu&ccedil;&atilde;o do processo de constru&ccedil;&atilde;o das penitenci&aacute;rias federais</p>', 'http://www.justica.gov.br/news/depen-busca-solucoes-inovadoras-para-construcoes-das-penitenciarias-federais/view', 'http://www.justica.gov.br/news/depen-busca-solucoes-inovadoras-para-construcoes-das-penitenciarias-federais/prisoes_arquitetura.png/@@images/eaad6c49-d4e2-4656-94dc-fd268240d449.png', 2, '2018-03-05 18:46:48', '2018-03-05 18:46:48'),
(12, 'Sistema de comunicações seguras da FAB é testado em aeronaves da Marinha', '<p>Depois de aeronaves do Ex&eacute;rcito Brasileiro, foi a vez de helic&oacute;pteros da Marinha do Brasil passarem por testes para uso do Sistema de Comunica&ccedil;&atilde;o Segura Link BR-1, da FAB.</p>', 'http://www.fab.mil.br/noticias/mostra/30171/OPERACIONAL%20-%20Sistema%20de%20comunica%C3%A7%C3%B5es%20seguras%20da%20FAB%20%C3%A9%20testado%20em%20aeronaves%20da%20Marinha', 'http://www.fab.mil.br/sis/enoticias/imagens/pub/34218/i17519144535114692.jpg', 2, '2018-03-05 18:46:48', '2018-03-05 18:46:48'),
(13, 'Defesa disponibiliza PND, END e LBDN para consulta pública', '<p>J&aacute; est&aacute; dispon&iacute;vel no site Participa.br a Pol&iacute;tica Nacional de Defesa (PND), a Estrat&eacute;gia Nacional de Defesa (END) e o Livro Branco de Defesa Nacional (LBDN)</p>', 'http://www.defesa.gov.br/noticias/31104-defesa-disponibiliza-pnd-end-e-lbdn-para-consulta-publica', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Brasil_%287952311794%29.jpg/220px-Brasil_%287952311794%29.jpg', 2, '2018-03-05 18:46:48', '2018-03-05 18:46:48'),
(14, 'Helibras entrega dois H225M em maio', NULL, 'http://www.helibras.com.br/website/po/press/Helibras-entrega-dois-H225M-em-maio_446.html', NULL, 2, '2018-03-05 18:46:49', '2018-03-05 18:46:49'),
(15, 'Pesquisa de vitimização e percepção de risco entre os profissionais do sistema de segurança pública', NULL, 'http://www.forumseguranca.org.br/publicacoes/pesquisa-de-vitimizacao-e-percepcao-de-risco-entre-os-profissionais-do-sistema-de-seguranca-publica/', NULL, 2, '2018-03-05 18:46:49', '2018-03-05 18:46:49'),
(22, 'Depen suspende visitas no Sistema Penitenciário Federal por 30 dias', '<p>Decis&atilde;o foi tomada pelo Departamento Penitenci&aacute;rio Nacional ﴾Depen﴿ ap&oacute;s o assassinato de uma servidora no dia 25 de maio e tamb&eacute;m depois da deflagra&ccedil;&atilde;o da Opera&ccedil;&atilde;o Ep&iacute;stola, da Pol&iacute;cia Federal</p>', 'http://www.justica.gov.br/news/depen-suspende-visitas-no-sistema-penitenciario-federal-por-30-dias/view', 'http://www.justica.gov.br/news/depen-suspende-visitas-no-sistema-penitenciario-federal-por-30-dias/peniternciaria.png', 4, '2018-03-05 19:09:17', '2018-03-05 19:09:17'),
(23, 'Criminalidade sobe na Grande São Paulo em abril, indica balanço', '<p>A Secretaria de Seguran&ccedil;a P&uacute;blica aponta que houve redu&ccedil;&atilde;o em furtos e roubos em geral, mas homic&iacute;dios e latroc&iacute;nios aumentaram na regi&atilde;o</p>', 'https://veja.abril.com.br/brasil/criminalidade-sobe-na-grande-sao-paulo-em-abril-indica-balanco/', 'https://abrilveja.files.wordpress.com/2017/04/cong-244a9735.jpg', 4, '2018-03-05 19:09:17', '2018-03-05 19:09:17'),
(24, 'EMBRAER Confirma parceria com a SAAB no KC‐390', '<p>O diretor de Intelig&ecirc;ncia de Mercado da EMBRAER Dimas Tomelin, confirmou com exclusividade para DefesaNet o avan&ccedil;o nas discuss&otilde;es com o grupo sueco SAAB</p>', 'http://www.defesanet.com.br/kc390/noticia/25945/EMBRAER-Confirma-parceria-com-a-SAAB-no-KC-390/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/04/35822_resize_620_380_true_false_null.jpg', 4, '2018-03-05 19:09:17', '2018-03-05 19:09:17'),
(25, 'Com detectores de metal, Exército e Sisp deflagram \'Operação Conde\' em presídio de Rio Branco', '<p>Segundo general, devido &agrave; extens&atilde;o do Francisco d&#39;Oliveira Conde, a a&ccedil;&atilde;o deve ser prolongada nos pr&oacute;ximos dias. Opera&ccedil;&atilde;o tamb&eacute;m deve ocorrer em pres&iacute;dios no interior do estado.</p>', 'https://g1.globo.com/ac/acre/noticia/com-detectores-de-metal-exercito-e-sisp-deflagram-operacao-conde-em-presidio-de-rio-branco.ghtml', 'https://s2.glbimg.com/aG3ywrK1HPmsyKif26P9pc_lX30=/0x0:1920x1080/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2017/z/X/apTlVASc6nfMJyCvKBOA/operacao4.jpg', 4, '2018-03-05 19:09:17', '2018-03-05 19:09:17'),
(26, 'Brasil é ouvido em audiência em corte da OEA sobre sistema prisional', NULL, 'http://agenciabrasil.ebc.com.br/direitos-humanos/noticia/2017-05/brasil-e-ouvido-em-audiencia-em-corte-da-oea-sobre-sistema', NULL, 4, '2018-03-05 19:09:18', '2018-03-05 19:09:18'),
(27, 'Brasil promete à ONU reduzir em 10% o número de presos até 2019. É possível?', NULL, 'https://www.nexojornal.com.br/expresso/2017/05/05/Brasil-promete-%C3%A0-ONU-reduzir-em-10-o-n%C3%BAmero-de-presos-at%C3%A9-2019.-%C3%89-poss%C3%ADvel', NULL, 4, '2018-03-05 19:09:18', '2018-03-05 19:09:18'),
(28, 'Taurus lança plataforma de armas na Brigada Militar do RS', NULL, 'http://www.defesanet.com.br/armas/noticia/25885/Taurus-lanca-plataforma-de-armas-na-Brigada-Militar-do-RS/', NULL, 4, '2018-03-05 19:09:18', '2018-03-05 19:09:18'),
(29, 'Governo apresenta conjunto de ações de segurança para o Rio de Janeiro', '<p>Planejamento reflete a integra&ccedil;&atilde;o entre a Uni&atilde;o e estados, sob as diretrizes estabelecidas no Plano Nacional de Seguran&ccedil;a</p>', 'http://www2.planalto.gov.br/acompanhe-planalto/noticias/2017/06/governo-apresenta-conjunto-de-acoes-de-seguranca-para-o-rio-de-janeiro', 'https://f.i.uol.com.br/fotografia/2018/02/27/15197010425a94cc321840e_1519701042_3x2_md.jpg', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(30, '26 º contingente brasileiro realizará a fase final da MINUSTAH', '<p>Em cerim&ocirc;nia realizada nesta sexta‐feira ﴾2﴿, na Base General Bacelar, em Porto Pr&iacute;ncipe, o 26&ordm; Contingente Brasileiro ﴾CONTBRAS﴿ na Miss&atilde;o das Na&ccedil;&otilde;es Unidas para Estabiliza&ccedil;&atilde;o no Haiti</p>', 'http://www.defesa.gov.br/noticias/31511-26-contingente-brasileiro-realizara-a-fase-final-da-minustah', 'http://www.defesa.gov.br/arquivos/2017/mes06/20170603_26_contbras_comandantes.jpg', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(31, 'CFN recebe novo modelo de Carros‐Lagarta Anδbios (CLAnf)', '<p>O Corpo de Fuzileiros Navais ﴾CFN﴿ recebeu os dois primeiros Carros‐Lagarta Anf&iacute;bios ﴾CLAnf﴿ do padr&atilde;o Reliability, Availability, Maintainability/Rebuild to Standard ﴾RAM/RS﴿.</p>', 'http://www.defesanet.com.br/cfn/noticia/25974/CFN-recebe-novo-modelo-de-Carros-Lagarta-Anfibios-%28CLAnf%29/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/06/36641_resize_620_380_true_false_null.jpg', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(32, 'Modernização do Cascavel', '<p>A Equitron, sediada em S&atilde;o Carlos ‐ SP, atua na constru&ccedil;&atilde;o de linhas de montagens para a ind&uacute;stria em geral, principalmente a automobil&iacute;stica.</p>', 'http://www.defesanet.com.br/guarani/noticia/25920/Modernizacao-do-Cascavel/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/media/1496088822_article_3.jpg', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(33, 'Governo libera R$ 1,2 bi para construir presídios e modernizar sistema penal', NULL, 'http://agenciabrasil.ebc.com.br/politica/noticia/2016-12/governo-libera-r-12-bi-para-construir-presidios-e-modernizar-sistema-penal', NULL, 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(34, '\'Não há política pública de segurança no Brasil\'', NULL, 'http://jcrs.uol.com.br/_conteudo/2017/05/geral/565823-nao-ha-politica-publica-de-seguranca-no-brasil.html', NULL, 5, '2018-03-05 19:30:27', '2018-03-05 19:30:27'),
(35, 'Delegação da Índia visita o Brasil e conhece documentos e projetos estratégicos do MD', NULL, 'http://www.defesanet.com.br/defesa/noticia/25941/Delegacao-da-India-visita-o-Brasil-e-conhece-documentos-e-projetos-estrategicos-do-MD/', NULL, 5, '2018-03-05 19:30:27', '2018-03-05 19:30:27'),
(36, 'Scanner e cães farejadores são usados para “limpeza” em presídio', NULL, 'https://www.campograndenews.com.br/cidades/interior/scanner-e-caes-farejadores-sao-usados-para-limpeza-em-presidio', NULL, 5, '2018-03-05 19:30:27', '2018-03-05 19:30:27'),
(37, 'Menos de 1% das cadeias brasileiras tem classificação ideal, diz CNJ', '<p>Apenas 10,7% das unidades foram consideradas em bom estado e 0,9% tidas como excelentes</p>', 'https://noticias.r7.com/brasil/menos-de-1-das-cadeias-brasileiras-tem-classificacao-ideal-diz-cnj-09062017', 'https://img.r7.com/images/2012/11/15/12_24_08_180_file?dimensions=460x305', 6, '2018-03-05 20:08:10', '2018-03-05 20:30:35'),
(38, 'Aracaju tem redução de 20% no número de homicídios em 2017', '<p>Iniciado h&aacute; 103 dias, o Plano Nacional de Seguran&ccedil;a P&uacute;blica est&aacute; dando resultados em Aracaju ﴾SE﴿. A cidade alcan&ccedil;ou uma redu&ccedil;&atilde;o de 20,4% no n&uacute;mero de homic&iacute;dios</p>', 'http://www.justica.gov.br/news/aracaju-reduz-20-numero-de-homicidios-em-2017', 'http://www.justica.gov.br/news/aracaju-reduz-20-numero-de-homicidios-em-2017/fn-0206.jpg', 6, '2018-03-05 20:08:10', '2018-03-05 20:30:35'),
(39, 'Decreto nº 9.077 regulamenta mudanças nas organizações da FAB', '<p>Foi publicado nesta sexta‐feira ﴾09/06﴿ no Di&aacute;rio Oficial da Uni&atilde;o o Decreto n&ordm; 9.077 que regulamenta o processo de reestrutura&ccedil;&atilde;o do Comando da Aeron&aacute;utica.</p>', 'https://forcamilitar.com.br/4327/decreto-no-9-077-regulamenta-mudancas-nas-organizacoes-da-fab/', 'https://forcamilitar.com.br/wp-content/uploads/2017/06/i176911120551934-567x381.jpg', 6, '2018-03-05 20:08:10', '2018-03-05 20:30:35'),
(40, 'A torre REMAX no Pelotão de Cavalaria Mecanizado', '<p>O presente artigo aborda as diversas peculiaridades e possibilidades de emprego, pelos Pelot&otilde;es de Cavalaria Mecanizado ﴾Pel C Mec﴿,do novo Reparo para Metralhadora Automatizado X ﴾REMAX﴿.</p>', 'http://www.defesanet.com.br/guarani/noticia/25926/A-torre-REMAX-no-Pelotao-de-Cavalaria-Mecanizado/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/06/36657_resize_620_380_true_false_null.jpg', 6, '2018-03-05 20:08:10', '2018-03-05 20:30:35'),
(41, 'Mutirão do CNJ revoga quase 45 mil prisões temporárias em todo o País', NULL, 'https://noticias.r7.com/brasil/mutirao-do-cnj-revoga-quase-45-mil-prisoes-temporarias-em-todo-o-pais-09062017', NULL, 6, '2018-03-05 20:08:11', '2018-03-05 20:08:11'),
(42, 'Governo do RS anuncia construção de presídio federal em Charqueadas', NULL, 'http://g1.globo.com/rs/rio-grande-do-sul/noticia/2017/03/governo-do-rs-anuncia-construcao-de-presidio-federal-em-charqueadas.html', NULL, 6, '2018-03-05 20:08:11', '2018-03-05 21:00:46'),
(43, 'Brasil avança na parceria com a Suécia', NULL, 'http://www.defesa.gov.br/noticias/31889-brasil-avanca-na-parceria-com-a-suecia', NULL, 6, '2018-03-05 20:08:11', '2018-03-05 21:00:46'),
(44, 'FAB integra aeronaves do Exército Brasileiro ao sistema Link BR‐1', NULL, 'http://www.defesanet.com.br/ec725/noticia/26104/FAB-integra-aeronaves-do-Exercito-Brasileiro-ao-sistema-Link-BR-1-/', NULL, 6, '2018-03-05 20:08:11', '2018-03-05 21:00:46'),
(45, 'Dois primeiros KC‐390 serão recebidos em 2018', NULL, 'http://www.defesanet.com.br/kc390/noticia/26080/Dois-primeiros-KC-390-serao-recebidos-em-2018/', NULL, 6, '2018-03-05 20:08:11', '2018-03-05 21:00:46'),
(46, 'Suspensão de visitas ínmas no Sistema Penitenciário Federal é prorrogad', '<p>As visitas sociais s&oacute; podem ocorrer pelo parlat&oacute;rio, ou seja, sem contato f&iacute;sico entre o detento e o visitante, ou por meio de videoconfer&ecirc;ncia</p>', 'http://www.justica.gov.br/noticias/suspensao-de-visitas-intimas-no-sistema-penitenciario-federal-e-prorrogada-por-30-dias/view', 'https://conteudo.imguol.com.br/c/noticias/62/2017/02/17/17fev2017---foto-de-arquivo-do-presidio-federal-de-catanduvas-pr-1487369447777_615x300.jpg', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(47, 'Atlas da Violência 2017 - Infográfic', '<p>A publica&ccedil;&atilde;o analisa o fen&ocirc;meno dos homic&iacute;dios por regi&otilde;es, unidades federativas e munic&iacute;pios e tamb&eacute;m por grupos demogr&aacute;ficos de interesse como jovens, negros e mulheres.</p>', 'http://www.forumseguranca.org.br/wp-content/uploads/2017/06/FBSP_atlas_da_violencia_2017_infografico.pdf', 'http://acspa.com.br/wp-content/uploads/2017/07/mapadaviolencia2017.jpg', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(48, 'SAAB – Mistérios no Programa Gripen E', '<p>A realiza&ccedil;&atilde;o do voo inaugural, no dia 15 de Junho, foi uma importante etapa no programa Gripen. Por&eacute;m, as a&ccedil;&otilde;es ap&oacute;s o voo pela administra&ccedil;&atilde;o da SAAB geram quest&otilde;es</p>', 'http://www.defesanet.com.br/gripenbrazil/noticia/26201/SAAB-%E2%80%93-Misterios-no-Programa-Gripen-E/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/06/36909_resize_620_380_true_false_null.jpg', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(49, 'KMW fecha novo contrato para modernização de blindados do Exército', '<p>O Ex&eacute;rcito Brasileiro (EB) contratou a Krauss-Maffei Wegmann (KMW) para a moderniza&ccedil;&atilde;o de novo lote de blindados. O novo contrato, publicado no Di&aacute;rio Oficial em 17 de maio, prev&ecirc; manuten&ccedil;&atilde;o</p>', 'http://defesaeseguranca.com.br/kmw-fecha-novo-contrato-para-modernizacao-de-blindados-do-exercito/', 'http://defesaeseguranca.com.br/wp-content/uploads/leopard-2-702x336.jpg', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(50, 'Marinha do Brasil finaliza primeira etapa para construção das novas corveta', NULL, 'https://www.portalmaritimo.com/2017/06/19/marinha-do-brasil-finaliza-primeira-etapa-para-construcao-das-novas-corvetas/', NULL, 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(51, 'Servidores do Depen e especialistas debateram os efeitos da prisão de mãe', NULL, 'http://www.justica.gov.br/noticias/servidores-do-depen-e-especialistas-debateram-os-efeitos-da-prisao-de-maes', NULL, 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(52, 'Atlas da Violência 2017', NULL, 'http://www.forumseguranca.org.br/publicacoes/atlas-da-violencia-2017/', NULL, 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(53, 'FAB recebe seu primeiro SC-105 para SAR', NULL, 'http://www.segurancaedefesa.com/index.php/using-joomla/extensions/components/content-component/article-categories/105-destaques/568-fab-recebe-seu-primeiro-sc-105-para-sar', NULL, 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(54, 'EXÉRCITO esclarece doação de obuseiros M109 ex-US Arm', NULL, 'http://defesaeseguranca.com.br/exercito-esclarece-doacao-obuseiros-m109-us-army/', NULL, 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(57, 'Program Management Meeng de Offset do Projeto F-X2', '<p>Evento realizado no Departamento de Ci&ecirc;ncia e Tecnologia Aeroespacial (DCTA) em S&atilde;o Jos&eacute; dos Campos, e que contou com a participa&ccedil;&atilde;o da empresa sueca Saab, respons&aacute;vel pelo fornecimento da nova gera&ccedil;&atilde;o do ca&ccedil;a Gripen</p>', 'http://tecnodefesa.com.br/program-management-meeting-de-offset-do-projeto-f-x2/', 'http://tecnodefesa.com.br/wp-content/uploads/2017/07/ska3212_2340x1316-696x392.jpg', 9, '2018-03-05 21:44:31', '2018-03-05 21:57:17'),
(58, 'Morteiro de 120 mm no VBTPMR 6×6 Guarani brasileiro', '<p>As empresas ONIRIA e RUAG apresentaram o VRTS, sistema de realidade virtual para treinamentos (virtual reality training system) projetado para apoiar a instru&ccedil;&atilde;o de futuros operadores de morteiro pesado de 120 mm RUAG Cobra</p>', 'http://tecnodefesa.com.br/morteiro-de-120-mm-no-vbtp-mr-6x6-guarani-brasileiro/', 'http://tecnodefesa.com.br/wp-content/uploads/2017/06/RUAG_COBRA_Mortar_Test-696x463.jpg', 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(59, 'Drones na Segurança Pública', '<p>Uma grande vantagem da tecnologia dos drones &eacute; a facilidade com que podem ser operados. Ap&oacute;s um curso de oito horas em m&eacute;dia, com aulas te&oacute;ricas e pr&aacute;ticas, &eacute; poss&iacute;vel operar um RPA com seguran&ccedil;a seguindo todas as regras da ANAC</p>', 'http://www.administradores.com.br/artigos/tecnologia/drones-na-seguranca-publica/105745/', 'http://cdn.24.co.za/files/Cms/General/d/2726/a6cc5daf45194b319c79c9f3cf7f0364.jpg', 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(60, 'Plano ainda não reduziu violência', '<p>Para tentar conter o aumento desenfreado dos casos de viol&ecirc;ncia, a Secretaria de Estado da Seguran&ccedil;a P&uacute;blica e da Defesa Social (Sesed/RN) lan&ccedil;ou o Plano Estrat&eacute;gico de Seguran&ccedil;a P&uacute;blica (Planesp)</p>', 'http://www.tribunadonorte.com.br/noticia/plano-ainda-na-o-reduziu-viola-ncia/386229', 'http://arquivos.tribunadonorte.com.br/fotos/196759.jpg', 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(61, 'FAB realiza maior ação de defesa da fronteira aérea', NULL, 'http://brasil.estadao.com.br/noticias/geral,fab-realiza-maior-acao-de-defesa-da-fronteira-aerea,70001891931', NULL, 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(62, 'Exército adota Fuzil IA2, com tecnologia 100% naciona', NULL, 'http://www.defesanet.com.br/armas/noticia/26417/Exercito-adota-Fuzil-IA2--com-tecnologia-100--nacional-/', NULL, 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(63, 'Operação Draga, da PF, invesga fraude em licitação no Porto de Itaqu', NULL, 'http://www.correiobraziliense.com.br/app/noticia/brasil/2017/07/12/internas_polbraeco,609020/operacao-draga-da-pf-investiga-fraude-em-licitacao-no-porto-de-itaqu.shtml', NULL, 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(64, 'Descomissionamento do NavioAeródromo \'São Paulo\' (A 12)', NULL, 'http://www.defesaaereanaval.com.br/descomissionamento-do-navio-aerodromo-sao-paulo-a-12/', NULL, 9, '2018-03-05 21:44:32', '2018-03-05 21:45:14'),
(65, 'PF abandona operação com veículos aéreos não tripulados para combate ao crime organizado', '<p>Avi&otilde;es est&atilde;o desmontados em hangar do Paran&aacute; e j&aacute; consumiram R$ 145 milh&otilde;es</p>', 'https://oglobo.globo.com/brasil/pf-abandona-operacao-com-veiculos-aereos-nao-tripulados-para-combate-ao-crime-organizado-21623662', 'https://ogimg.infoglobo.com.br/in/21623661-f0c-5cb/FT1086A/420/vant2.jpg', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(66, 'Força Nacional pede R$ 120 milhões e pode pedir a dispensa de 1.500 homens', '<p>Coordenador da corpora&ccedil;&atilde;o pede R$ 120 milh&otilde;es para evitar a paralisa&ccedil;&atilde;o das atividades e a dispensa de 1.550 homens</p>', 'http://www.diariodepernambuco.com.br/app/noticia/brasil/2017/07/20/interna_brasil,714030/forca-nacional-pede-r-120-milhoes-e-pode-pedir-a-dispensa-de-1-500-ho.shtml', 'http://imagens.globoradio.globo.com/cbn/fotos/uploads2015/89445/rc_forca-nacional-seguranca-assume-seguranca-areas-competicoes-rio-2016_01107052016jpg_610x340.jpg', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(67, 'Mesmo sem porta-aviões, marinha do brasil segue interessada no gripen naval', '<p>For&ccedil;a naval atribui um oficial ao comit&ecirc; da FAB para acompanhar a aquisi&ccedil;&atilde;o do Gripen NG</p>', 'http://airway.uol.com.br/mesmo-sem-porta-avioes-marinha-do-brasil-segue-interessada-no-gripen-naval/', 'https://airway.uol.com.br/wp-content/uploads/2015/07/S%C3%A3o-Paulo-A-121.jpg', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(68, 'Guarani UT-30BR - Aumento de capacidade operacional', '<p>Ex&eacute;rcito come&ccedil;a a receber viaturas blindadas Guarani equipadas com a torre n&atilde;o tripulada UT-30BR</p>', 'http://www.defesanet.com.br/guarani/noticia/26495/Guarani-UT-30BR---Aumento-de-capacidade-operacional-/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/07/37236_resize_620_380_true_false_null.jpg', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(69, 'Presídio de Araguari receberá programa para reinserção de detento', NULL, 'http://g1.globo.com/minas-gerais/triangulo-mineiro/noticia/presidio-de-araguari-recebera-programa-para-reinsercao-de-detento.ghtml', NULL, 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(70, 'Ações das Forças Armadas serão feitas de surpresa no Rio, diz Jungmann', NULL, 'http://agenciabrasil.ebc.com.br/geral/noticia/2017-07/acoes-das-forcas-armadas-serao-feitas-de-surpresa-no-rio-diz-jungmann', NULL, 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(71, 'Delegacias de 54 dos 62 municípios do Amazonas funcionam como presídios', NULL, 'http://agenciabrasil.ebc.com.br/geral/noticia/2017-07/delegacias-de-54-dos-62-municipios-do-amazonas-funcionam-como-presidios', NULL, 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(72, 'Consulta pública reúne sugestões para políca de defesa nacional', NULL, 'http://www.brasil.gov.br/defesa-e-seguranca/2017/07/consulta-publica-reune-sugestoes-sobre-politica-de-defesa-nacional', NULL, 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(73, 'Falência na área de Segurança é dramática', NULL, 'http://odia.ig.com.br/rio-de-janeiro/2017-07-20/falencia-na-area-de-seguranca-e-dramatica.html', NULL, 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(74, 'OGMA envia peças para montar segunda aeronave militar KC-390 no Brasil', '<p>Empresa de Alverca &eacute; respons&aacute;vel pelo fabrico da fuselagem central das aeronaves que j&aacute; est&atilde;o a ser produzidas em s&eacute;rie</p>', 'http://www.defesanet.com.br/kc390/noticia/26562/OGMA-envia-pecas-para-montar-segunda-aeronave-militar-KC-390-no-Brasil/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/07/37293_resize_620_380_true_false_null.jpg', 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(75, 'Comando Militar do Leste ainda não recebeu orientação sobre Plano Nacional de Segurança', '<p>RIO &mdash; Ap&oacute;s o Governo Federal anunciar, na sexta-feira passada, a possibilidade de liberar militares das For&ccedil;as Armadas para opera&ccedil;&otilde;es pontuais no Rio, o Comando Militar do Leste (CML) informou</p>', 'https://forcamilitar.com.br/2017/07/25/comando-militar-do-leste-ainda-nao-recebeu-orientacao-sobre-plano-nacional-de-seguranca/', 'https://forcamilitar.com.br/wp-content/uploads/2017/07/xexercito.jpg.pagespeed.ic_.a8Mg9zmIK1-678x381.jpg', 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(76, 'Departamento Penitenciário Nacional não tem controle sobre sistema carcerário brasileiro', '<p>Projetos para constru&ccedil;&otilde;es de novas cadeias e para implanta&ccedil;&atilde;o de tornozeleiras eletr&ocirc;nicas sofrem dificuldades para serem implantados mesmo com recursos dispon&iacute;veis</p>', 'https://ndonline.com.br/florianopolis/noticias/departamento-penitenciario-nacional-nao-tem-controle-sobre-sistema-carcerario-brasileiro', 'https://app1.ndonline.com.br/files/images/2017/07/cropped/bf1d22ac7fe2bddd64fd6ab3df23fcea26696665.jpg', 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(77, 'Estudo realizado pela UFSC aponta superfaturamento na construção de presídios pré- moldados', '<p>Or&ccedil;ado em R$ 1,1 bi para diminuir de d&eacute;ficit nas cadeias, o PNASP s&oacute; criou mil vagas das 45 mil previstas no programa</p>', 'https://ndonline.com.br/florianopolis/noticias/estudo-realizado-pela-ufsc-aponta-superfaturamento-na-construcao-de-presidios-pre-moldados', 'https://app1.ndonline.com.br/files/images/2017/07/cropped/502b119d8c299395331cd2ac1d8aba085ae81150.jpg', 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(78, 'Carceragem explosiva', NULL, 'http://zh.clicrbs.com.br/rs/opiniao/noticia/2017/07/carceragem-explosiva-9850906.html', NULL, 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(79, 'Empresa realiza voo de primeiro dirigível tripulado construído na América Latina', NULL, 'http://www.defesa.gov.br/noticias/33377-empresa-realiza-voo-de-primeiro-dirigivel-tripulado-construido-na-america-latina', NULL, 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(80, 'Criação de vagas em cadeias ficou aquém da meta', NULL, 'http://www.correiobraziliense.com.br/app/noticia/brasil/2017/07/24/internas_polbraeco,612107/criacao-de-vagas-em-cadeias-ficou-aquem-da-meta.shtml', NULL, 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(81, 'Dados sobre o sistema carcerário brasileiro não são confiáveis, diz relatório da CGU', NULL, 'http://www.conjur.com.br/2017-jul-24/dados-sistema-carcerario-brasileiro-nao-sao-confiaveis-cgu?utm_source=dlvr.it&utm_medium=facebook', NULL, 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(82, 'Força de Intervenção Penitenciária permanece em Alcaçuz por mais 90 dias', NULL, 'http://www.justica.gov.br/noticias/forca-de-intervencao-penitenciaria-permanece-em-alcacuz-por-mais-90-dias', NULL, 11, '2018-03-05 22:13:42', '2018-03-05 22:13:42'),
(83, 'Governo quer mudar leis de segurança pública para combater crime organizado', '<p>O governo do presidente Michel Temer (PMDB) prepara um pacote legislativo com mudan&ccedil;as na seguran&ccedil;a p&uacute;blica para combater o crime organizado, informou o ministro do GSI (Gabinete de Seguran&ccedil;a Institucional)</p>', 'https://noticias.uol.com.br/politica/ultimas-noticias/2017/08/08/governo-quer-ludar-leis-de-seguranca-publica-para-combater-crime-organizado.htm', 'https://conteudo.imguol.com.br/c/noticias/7b/2017/08/05/operacao-faz-parte-da-segunda-fase-do-plano-nacional-de-seguranca-no-rio-1501970605933_615x300.jpg', 12, '2018-03-05 22:22:29', '2018-03-05 22:22:29'),
(84, 'CNJ apresenta novo sistema digital para cadastro de presos e foragidos', '<p>Uma nova ferramenta digital desenvolvida pelo Conselho Nacional de Justi&ccedil;a (CNJ) vai permitir aos ju&iacute;zes acompanhar cada passo das pessoas presas no sistema carcer&aacute;rio e, tamb&eacute;m, o n&uacute;mero de condenados foragidos</p>', 'http://www.cnj.jus.br/noticias/cnj/85075-sistema-digital-do-cnj-vai-cadastrar-presos-e-foragidos-da-justica', 'http://www.cnj.jus.br/files/conteudo/imagem/2017/07/1bdc460bee28eb808e14218cc1e76ed6.jpg', 12, '2018-03-05 22:22:29', '2018-03-05 22:22:29'),
(85, 'Forças Armadas sofrem corte de 44% dos recursos', '<p>Em meio &agrave; discurs&atilde;o da mudan&ccedil;a da meta fiscal e de corte de gastos, as For&ccedil;as Armadas pressionam pela recomposi&ccedil;&atilde;o no Or&ccedil;amento, que nos &uacute;ltimos anos sofreu redu&ccedil;&atilde;o de 44,5%</p>', 'http://www.defesaaereanaval.com.br/forcas-armadas-sofrem-corte-de-44-dos-recursos/', 'https://abrilveja.files.wordpress.com/2017/07/patrulha-forcas-armadas-seguranca-rio-20170729-0002.jpg', 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(86, 'Novo Airbus C295 de Busca e Resgate da FAB chega ao Brasil', '<p>O C295 SAR brasileiro passou por quatro continentes antes de chegar ao Brasil (Airbus)</p>', 'http://airway.uol.com.br/novo-airbus-c295-de-busca-e-resgate-da-fab-chega-ao-brasil/', 'https://airway.uol.com.br/wp-content/uploads/2017/06/C295_FAB_01-960x640.jpg', 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(87, 'Segurança Pública herdará estrutura da exnta pasta de Grandes Eventos, diz MJ', NULL, 'http://g1.globo.com/politica/noticia/seguranca-publica-herdara-estrutura-da-extinta-pasta-de-grandes-eventos-diz-mj.ghtml', NULL, 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(88, 'Segurança pública: solução depende de parcipação social', NULL, 'http://www12.senado.leg.br/noticias/especiais/especial-cidadania/seguranca-publica-solucao-depende-de-participacao-social', NULL, 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(89, 'Cármen Lúcia conta com o apoio da Jusça Federal para implantar BNMP 2.0', NULL, 'http://www.cnj.jus.br/noticias/cnj/85207-carmen-lucia-conta-com-o-apoio-da-justica-federal-para-implantar-bnmp-2-0', NULL, 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(90, 'Comandante do Exército cobra apoio jurídico a militares que atuam no', NULL, 'https://extra.globo.com/noticias/rio/comandante-do-exercito-cobra-apoio-juridico-militares-que-atuam-no-rio-21685183.html', NULL, 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(91, 'o Marinha do Brasil testa novos procedimentos de ataque', NULL, 'http://airway.uol.com.br/marinha-do-brasil-testa-novos-procedimentos-de-ataque/', NULL, 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(92, 'Modernidade - Programa Estratégico GUARANI', '<p>No per&iacute;odo de 7 a 11 de agosto, o Pelot&atilde;o de Manuten&ccedil;&atilde;o, do Esquadr&atilde;o de Comando e Apoio do 17&ordm; Regimento de Cavalaria Mecanizado (17&ordm; RC Mec), junto com t&eacute;cnicos das empresas IVECO e ARE</p>', 'http://www.defesanet.com.br/guarani/noticia/26791/Modernidade---Programa-Estrategico-GUARANI-/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/08/37536_resize_620_380_true_false_null.jpg', 13, '2018-03-14 18:02:26', '2018-03-14 18:02:26'),
(93, 'Lições aprendidas com a VBTP M1126 ICV Stryker', '<p>Batizado inicialmente de Interim Armored Vehicle (IAV), a viatura Stryker foi concebida no contexto maior das transforma&ccedil;&otilde;es e demandas vislumbradas pelo alto comando do Ex&eacute;rcito dos Estados Unidos da Am&eacute;rica (EUA) no final dos anos 90.</p>', 'http://www.defesanet.com.br/guarani/noticia/26676/Licoes-aprendidas-com-a-VBTP-M1126-ICV-Stryker/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/08/37412_resize_620_380_true_false_null.png', 13, '2018-03-14 18:02:26', '2018-03-14 18:02:26'),
(94, 'Senasp e Consesp debatem políticas de segurança pública', '<p>A Secretaria Nacional de Seguran&ccedil;a P&uacute;blica do Minist&eacute;rio da Justi&ccedil;a e Seguran&ccedil;a P&uacute;blica (Senasp/MJSP) e uma comitiva do Conselho Nacional de Secret&aacute;rios de Seguran&ccedil;a P&uacute;blica (Consesp</p>', 'http://www.justica.gov.br/news/senasp-e-consesp-debatem-politicas-de-seguranca-publica', 'http://www.justica.gov.br/news/senasp-e-consesp-debatem-politicas-de-seguranca-publica/reuniaosenaspconsesp.png', 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(95, 'Comissão do Congresso agiliza aprovação de projetos em segurança pública', '<p>Eun&iacute;cio lamentou que a maior parte das propostas sejam corporativistas, mas adiantou que ser&aacute; dada prioridade a projetos que melhorem a prote&ccedil;&atilde;o da sociedade e do cidad&atilde;o</p>', 'http://www.correiobraziliense.com.br/app/noticia/politica/2017/08/21/interna_politica,619396/comissao-do-congresso-agiliza-aprovacao-de-projetos-em-seguranca-publi.shtml', 'http://manager.politicos.org.br/Storage/Images/News/9b378ac8-27c0-4a8f-8e85-54e94008eb20.jpg', 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(96, 'Exército quer que Jusça Militar passe a julgar crime doloso contra civil', NULL, 'http://www.defesanet.com.br/mout/noticia/26774/Exercito-quer-que-Justica-Militar-passe-a-julgar-crime-doloso-contra-civil/', NULL, 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(97, 'Estado vai usar dados de biometria para conter violência', NULL, 'http://www.folhamax.com.br/politica/justica-eleitoral-quer-compartilhar-dados-com-a-secretaria-de-seguranca-publica/135423', NULL, 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(98, 'SBPC - Marinha defende projeto de submarino nuclear', NULL, 'http://www.defesanet.com.br/prosub/noticia/26448/SBPC---Marinha-defende-projeto-de-submarino-nuclear/', NULL, 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(99, 'Depen e UFMG oferecem cursos gratuitos para servidores do sistema prisional', NULL, 'http://www.justica.gov.br/noticias/depen-e-ufmg-oferecem-cursos-gratuitos-para-servidores-de-todo-o-pais', NULL, 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(100, 'EDITORIAL - 44% Miope ou Desonesto', NULL, 'http://www.defesanet.com.br/ghbr/noticia/26818/EDITORIAL----44--Miope-ou-Desonesto/', NULL, 13, '2018-03-14 18:02:27', '2018-03-14 18:02:27'),
(101, 'O Brasil vai mal na segurança pública? A solução está na economia', '<p>China, Estados Unidos, Europa, Indon&eacute;sia, Oceania e &Aacute;frica do Sul somam, juntos, o mesmo n&uacute;meros de homic&iacute;dios do Brasil em um ano</p>', 'http://www.gazetadopovo.com.br/ideias/o-brasil-vai-mal-na-seguranca-publica-a-solucao-esta-na-economia-bebdmiuv943p316rc6f3xn2fo', 'http://www.gazetadopovo.com.br/ra/mega/Pub/GP/p4/2017/08/17/Ideias/Imagens/Cortadas/pm-Rf62jiTa9JgZ0dQ8boCMAkN-1200x800@GP-Web.jpg', 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(102, 'Força Nacional fará segurança pública no Rio de Janeiro até final de dezembro', '<p>O governo federal prorrogou a presen&ccedil;a da For&ccedil;a Nacional de Seguran&ccedil;a P&uacute;blica no estado do Rio de Janeiro at&eacute; 31 de dezembro. A portaria do Minist&eacute;rio da Justi&ccedil;a foi publicada hoje (4) no Di&aacute;rio Oficial da Uni&atilde;o.</p>', 'http://agenciabrasil.ebc.com.br/geral/noticia/2017-09/forca-nacional-fara-seguranca-publica-no-rio-de-janeiro-ate-final-de-dezembro', 'http://agenciabrasil.ebc.com.br/sites/_agenciabrasil2013/files/styles/interna_grande/public/forca_nacional.jpg', 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(103, 'O portifólio estratégico do Exército', '<p>O EB gerencia os atuais Programas Estrat&eacute;gicos (PgEE), por meio do Escrit&oacute;rio de Projetos do Ex&eacute;rcito (EPEx), com equipes espec&iacute;ficas. Atualmente, o EstadoMaior do Ex&eacute;rcito (EME) conduz, por interm&eacute;dio do EPE</p>', 'http://www.defesanet.com.br/doutrina/noticia/26888/O-portfolio-estrategico-do-Exercito/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/08/37621_resize_620_380_true_false_null.jpg', 14, '2018-03-14 18:09:25', '2018-03-14 18:10:34'),
(104, 'Reestruturação da Força Aérea, entenda porquê', '<p>As constantes transforma&ccedil;&otilde;es da atualidade t&ecirc;m impelido as institui&ccedil;&otilde;es &agrave; racionaliza&ccedil;&atilde;o de suas atividades, simplifica&ccedil;&atilde;o dos processos e busca da efic&aacute;cia e da efici&ecirc;ncia. Inserida nesse contexto, a For&ccedil;a A&eacute;rea Brasileira</p>', 'http://www.defesanet.com.br/fab/noticia/24355/Reestruturacao-da-Forca-Aerea--entenda-porque/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2016/12/34107_resize_620_380_true_false_null.jpg', 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(105, 'FAB - Caças fazem 12 interceptações por mês', NULL, 'http://www.defesanet.com.br/aviacao/noticia/26830/FAB---Cacas-fazem-12-interceptacoes-por-mes/', NULL, 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(106, 'Programa nuclear da Marinha será debado na Comissão de Ciência e Tecnologia', NULL, 'http://www12.senado.leg.br/noticias/materias/2017/08/30/programa-nuclear-da-marinha-sera-debatido-na-comissao-de-ciencia-e-tecnologia', NULL, 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(107, 'Exército não pode impedir servidor de servir temporariamente', NULL, 'http://www.conjur.com.br/2017-set-10/exercito-nao-impedir-servidor-servir-temporariamente', NULL, 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(108, '20º BIB - Estágio de uso de Simulador de Tiro', NULL, 'http://www.defesanet.com.br/doutrina/noticia/26967/20--BIB---Estagio-de-uso-de-Simulador-de-Tiro/', NULL, 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(109, 'Ministro da Jusça sugere que dinheiro do fundo eleitoral vá para segurança pública', NULL, 'http://politica.estadao.com.br/noticias/geral,ministro-da-justica-sugere-que-dinheiro-do-fundo-eleitoral-va-para-seguranca-publica,70001957460', NULL, 14, '2018-03-14 18:09:25', '2018-03-14 18:09:25'),
(110, 'Primeira aeronave Super Lynx modernizada realiza voo experimental', '<p>A aeronave N-4001, primeiro dos oito helic&oacute;pteros Super Lynx da Marinha do Brasil (MB) em processo de moderniza&ccedil;&atilde;o, realizou com &ecirc;xito o seu voo experimental, em 28 de setembro</p>', 'http://www.defesanet.com.br/prosuper/noticia/27270/Primeira-aeronave-Super-Lynx-modernizada-realiza-voo-experimental-na-sede-da-empresa-Leonardo-%28IT%29/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/38019_resize_620_380_true_false_null.jpg', 15, '2018-03-14 18:20:35', '2018-03-14 18:20:35'),
(111, 'Navio parte de Porto Príncipe com materiais e equipamentos', '<p>No contexto das atividades de desmobiliza&ccedil;&atilde;o do 26&ordm; Contingente Militar Brasileiro (CONTBRAS) da Miss&atilde;o das Na&ccedil;&otilde;es Unidas para Estabiliza&ccedil;&atilde;o no Haiti (MINUSTAH), no dia 30 de setembro</p>', 'http://www.defesanet.com.br/ph/noticia/27299/Navio-parte-de-Porto-Principe-com-materiais-e-equipamentos-utilizados-pelo-Brasil/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/10/38046_resize_620_380_true_false_null.jpg', 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(112, 'A crise da segurança pública no Brasil e o uso de GLOs e Força Nacional', '<p>Mais de 50 mil pessoas morreram ano passado em decorr&ecirc;ncia da viol&ecirc;ncia urbana no pa&iacute;s. Dados do Mapa da Viol&ecirc;ncia realizado pela Faculdade LatinoAmericana de Ci&ecirc;ncias Sociais (FLASC)</p>', 'http://justificando.cartacapital.com.br/2017/09/28/crise-da-seguranca-publica-no-brasil-e-o-uso-de-glos-e-forca-nacional/', 'http://cdn01.justificando.cartacapital.com.br/wp-content/uploads/2017/09/28152202/A-crise-da-seguran%C3%A7a-p%C3%BAblica-no-Brasil-e-o-uso-de-GLOs-e-For%C3%A7a-Nacional.jpg', 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(113, 'Ministro da Defesa anuncia medidas para melhorar segurança do material militar', '<p>O ministro da Defesa Nacional anunciou hoje um conjunto de medidas para refor&ccedil;ar as condi&ccedil;&otilde;es de seguran&ccedil;a das instala&ccedil;&otilde;es de armazenamento de material militar sens&iacute;vel, na sequ&ecirc;ncia do furto de material militar</p>', 'https://www.rtp.pt/noticias/pais/ministro-da-defesa-anuncia-medidas-para-melhorar-seguranca-do-material-militar_n1028225', 'http://www.diversityteam.org/upload/2018/01/13/military-storage-ammo-cabinets-armory-military-storage-ammo-cabinets-ammunition-storage-cabinets-s-eebdc9f3ad0bc226.jpg', 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(114, 'Operação Ágata Pantanal: produtos ilícitos e imigrantes ilegais são barrados em região fronteiriça', NULL, 'http://www.defesanet.com.br/fronteiras/noticia/27328/Operacao-Agata-Pantanal--produtos-ilicitos-e-imigrantes-ilegais-sao-barrados-em-regiao-fronteirica/', NULL, 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(115, 'FAB vai receber primeiros caças Gripen em 2021', NULL, 'https://airway.uol.com.br/fab-vai-receber-primeiros-cacas-gripen-em-2021/', NULL, 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(116, 'Fundação Ezute e Escola de Guerra Naval apresentam estudo sobre ciclo de vida em projetos de defesa', NULL, 'http://www.defesanet.com.br/ezute/noticia/27462/Fundacao-Ezute-e-Escola-de-Guerra-Naval-apresentam-estudo-sobre-ciclo-de-vida-em-projetos-de-defesa/', NULL, 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(117, 'Tiro de Aceitação de Campo com o sistema REMAX das Viaturas Guarani comprova o poder de fogo da Força', NULL, 'http://www.defesanet.com.br/guarani/noticia/27256/Tiro-de-Aceitacao-de-Campo-com-o-sistema-REMAX-das-Viaturas-Guarani-comprova-o-poder-de-fogo-da-Forca/', NULL, 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(118, 'Tiro de Aceitação de Campo do REMAX', '<p>Nos dias 21 e 22 de setembro, o 17&ordm; Regimento de Cavalaria Mecanizado (17&ordm; RC Mec) recebeu representantes da Diretoria de Fabrica&ccedil;&atilde;o e da Empresa ARES para acompanhar a realiza&ccedil;&atilde;o do Tiro de Aceita&ccedil;&atilde;o de Campo do</p>', 'http://www.forte.jor.br/2017/09/28/tiro-de-aceitacao-de-campo-do-remax/', 'http://www.forte.jor.br/wp-content/uploads/2017/09/REMAX-5.jpg', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(119, 'O Saab Gripen E/F de Nova Geração', '<p>O demonstrador do Gripen NG serviu para reduzir o risco de desenvolvimento de uma nova vers&atilde;o do Gripen. &Eacute; um JAS 39D modificado, com novo motor, trem de pouso reprojetado e reposicionado, novos sensores e avi&ocirc;nicos, que agora</p>', 'http://www.aereo.jor.br/2017/10/23/o-saab-gripen-ef-de-nova-geracao/', 'http://www.aereo.jor.br/wp-content/uploads/2017/10/Gripen-NG-640x653.jpg', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(120, 'Com 7 casos por dia, latrocínio sobe 58% no país em 7 anos', '<p>Segundo levantamento, foram quase 14 mil casos do crime no pa&iacute;s desde 2010; especialistas culpam crise econ&ocirc;mica, redu&ccedil;&atilde;o de programas e de policiamento</p>', 'http://veja.abril.com.br/brasil/com-7-casos-por-dia-latrocinio-sobe-58-no-pais-em-7-anos/', 'https://abrilveja.files.wordpress.com/2016/06/mao-arma-20121116-26-original3.jpeg', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(121, 'O sistema prisional brasileiro: a crise atual e perspecvas de solução', '<p>Este dossi&ecirc;, organizado pela professora Fiona Macaulay (Universidade de Bradford/Reino Unido), apresenta uma an&aacute;lise da atual crise do sistema prisional brasileiro e discute as solu&ccedil;&otilde;es que podem ser pensadas do ponto de vista</p>', 'http://www.appego.com.br/blog/novidades/o-sistema-prisional-brasileiro-a-crise-atual-e-perspectivas-de-solucao-21a-edicao-da-revista-brasileira-de-seguranca-publica/', 'http://itirucuonline.com/wp-content/uploads/2016/02/superpopulapresididididdd-400x267.jpg', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(122, 'Nova lei torna crime hediondo o porte de arma de uso restrito', NULL, 'http://www2.camara.leg.br/camaranoticias/noticias/SEGURANCA/547267-NOVA-LEI-TORNA-CRIME-HEDIONDO-O-PORTE-DE-ARMA-DE-USO-RESTRITO.html', NULL, 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(123, 'Segurança Pública aprova bloqueio de celular em presídios financiados pelo Funpen', NULL, 'http://www2.camara.leg.br/camaranoticias/noticias/SEGURANCA/547296-SEGURANCA-PUBLICA-APROVA-BLOQUEIO-DE-CELULAR-EM-PRESIDIOS-FINANCIADOS-PELO-FUNPEN.html', NULL, 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(124, 'Operação reúne 3,4 mil militares do Exército no sul de MS para fazer simulação com veículos de guerra', NULL, 'https://g1.globo.com/mato-grosso-do-sul/noticia/operacao-reune-34-mil-militares-do-exercito-no-sul-de-ms-para-fazer-simulacao-com-veiculos-de-guerra.ghtml', NULL, 16, '2018-03-14 18:29:59', '2018-03-14 18:29:59'),
(125, 'Comandante da FAB diz que faltam recursos para voos de suprimento a bases militares nas fronteira', NULL, 'https://noticias.uol.com.br/cotidiano/ultimas-noticias/2017/10/18/comandante-da-fab-diz-que-faltam-recursos-para-voos-de-suprimento-a-bases-militares-nas-fronteiras.htm', NULL, 16, '2018-03-14 18:29:59', '2018-03-14 18:29:59'),
(126, 'SEGURANÇA PÚBLICA EM NUMEROS 2017', NULL, 'http://www.forumseguranca.org.br/wp-content/uploads/2017/10/infografico2017-vs8-FINAL-.pdf', NULL, 16, '2018-03-14 18:29:59', '2018-03-14 18:29:59'),
(127, 'Fundo Nacional de Segurança Pública tem orçamento de R$ 1 bi e execução de apenas 17%', '<p>Senado discute a cria&ccedil;&atilde;o de um novo fundo dentro do pacote de combate &agrave; viol&ecirc;ncia</p>', 'https://oglobo.globo.com/brasil/fundo-nacional-de-seguranca-publica-tem-orcamento-de-1-bi-execucao-de-apenas-17-22061715', 'https://ogimg.infoglobo.com.br/in/22061714-db8-50c/FT1086A/420/x72858604_-BRASILBrasiliaBSBPA07-11-2017PAO-governador-do-.jpg.pagespeed.ic.kRsOFTpkV0.jpg', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(128, 'Lei sancionada regulamenta repasses do Funpen', '<p>Foi sancionada com veto parcial e publicada no Di&aacute;rio Oficial da Uni&atilde;o desta sexta-feira (27) a Lei 13.500/2017, que define crit&eacute;rios para a transfer&ecirc;ncia de recursos do Fundo Penitenci&aacute;rio Nacional (Funpen)</p>', 'https://www12.senado.leg.br/noticias/materias/2017/10/27/lei-sancionada-regulamenta-repasses-do-funpen', 'https://www12.senado.leg.br/noticias/materias/2017/10/27/lei-sancionada-regulamenta-repasses-do-funpen/presidio_03___20151109_01753.jpg/@@images/image/imagem_materia', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(129, 'Exclusivo - KC-390 – Testes ao Extremo', '<p>Teste de ESTOL (perda de sustenta&ccedil;&atilde;o) da aeronave cargueira multimiss&atilde;o KC-390 &eacute; para tripula&ccedil;&atilde;o com &quot;nervos de a&ccedil;o&quot;</p>', 'http://www.defesanet.com.br/kc390/noticia/27458/Exclusivo---KC-390-%E2%80%93-Testes-ao-Extremo/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/10/38221_resize_620_380_true_false_null.jpg', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(130, 'Marinha põe em operação seu navio mais importante', '<p>O mais importante e imponente navio da Marinha do Brasil foi &quot;homologado&quot; faz alguns dias - isto &eacute;, est&aacute; agora plenamente operacional, o que foi obtido durante uma viagem de ida e volta entre o Rio de Janeiro e Santos, no litoral paulista.</p>', 'http://www1.folha.uol.com.br/poder/2017/11/1932906-marinha-poe-em-operacao-seu-navio-mais-importante.shtml', 'https://f.i.uol.com.br/fotografia/2017/11/05/150990313459ff4b1e6897d_1509903134_3x2_md.jpg', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(131, 'Submarino nuclear nacional enfim avança', NULL, 'http://www.multclipp.com.br/verNoticia.aspx?n=6hpeBq5KG8o%3d&e=v%2fM143bE7VE%3d', NULL, 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(132, 'BAE SYSTEM entrega o 250º M113 ao Exército Brasileiro', NULL, 'http://defesaeseguranca.com.br/bae-systems-entrega-o-250o-m113-modernizado-para-o-exercito-brasileiro/', NULL, 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(133, 'Incidente com o Embraer KC-390 PTZNF', NULL, 'http://www.aereo.jor.br/2017/10/19/incidente-com-o-embraer-kc-390-pt-znf/', NULL, 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(134, 'Governadores se unem para defender pacto nacional em torno da segurança pública', NULL, 'http://agenciabrasil.ebc.com.br/geral/noticia/2017-10/governadores-se-unem-para-defender-pacto-nacional-em-torno-da-seguranca', NULL, 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(135, 'Exército recebe viaturaslançadoras de foguetes do Programa ASTROS 2020 com tecnologia digital.', '<p>Formosa (GO) &ndash; No dia 30 de outubro, o 6&ordm; Grupo de M&iacute;sseis de Foguetes (6&ordm; GMF) foi palco de uma cerim&ocirc;nia para a entrega de 12 viaturas modernizadas, no padr&atilde;o MK3M, ao Ex&eacute;rcito Brasileiro</p>', 'http://www.defesanet.com.br/terrestre/noticia/27548/Exercito-recebe-viaturas-lancadoras-de-foguetes-do-Programa-ASTROS-2020-com-tecnologia-digital--/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/10/38324_resize_620_380_true_false_null.jpg', 18, '2018-03-15 18:51:33', '2018-03-15 18:51:33'),
(136, 'Helicóptero H-36 passa por avaliação operacional', '<p>IPEV realiza avalia&ccedil;&atilde;o operacional em helic&oacute;ptero H225M utilizado pelas For&ccedil;as Armadas. Para testar o sistema, foi simulado um cen&aacute;rio com v&aacute;rias amea&ccedil;as.</p>', 'http://www.defesanet.com.br/ec725/noticia/27545/Helicoptero-H-36-passa-por-avaliacao-operacional-/', 'http://d30p9ca83oqyng.cloudfront.net/defesanet/site/upload/news_image/2017/10/38324_resize_620_380_true_false_null.jpg', 18, '2018-03-15 18:51:33', '2018-03-15 18:51:33'),
(137, 'Falência da segurança pública brasileira é consenso na CCJ', '<p>A Comiss&atilde;o de Constitui&ccedil;&atilde;o, Justi&ccedil;a e Cidadania (CCJ) discutiu nesta ter&ccedil;a-feira (21) a Pol&iacute;tica Nacional de Seguran&ccedil;a P&uacute;blica. Sob relatoria de Wilder Morais (PP-GO), esta &eacute; uma das pol&iacute;ticas p&uacute;blicas que est&atilde;o sendo avaliadas pela comiss&atilde;</p>', 'https://www12.senado.leg.br/noticias/materias/2017/11/21/falencia-da-seguranca-publica-brasileira-e-consenso-na-ccj', 'https://www12.senado.leg.br/noticias/materias/2017/11/21/falencia-da-seguranca-publica-brasileira-e-consenso-na-ccj/20171121_00718mo.jpg', 18, '2018-03-15 18:51:33', '2018-03-15 18:51:33'),
(138, 'Senado recebe pacote de segurança pública', '<p>O Senado recebeu neste m&ecirc;s cinco projetos de lei da C&acirc;mara (PLCs) que endurecem a legisla&ccedil;&atilde;o sobre a seguran&ccedil;a p&uacute;blica. O tema deve receber prioridade do Plen&aacute;rio at&eacute; o final deste ano.</p>', 'https://www12.senado.leg.br/noticias/materias/2017/11/16/senado-recebe-pacote-de-seguranca-publica', 'https://www12.senado.leg.br/noticias/materias/2017/11/16/senado-recebe-pacote-de-seguranca-publica/presidio_20170201_4470.jpg', 18, '2018-03-15 18:51:33', '2018-03-15 18:51:33'),
(139, 'Aquisição do Sistema de Mísseis RBS 70 na Suécia', NULL, 'http://www.defesanet.com.br/terrestre/noticia/27602/Aquisicao-do-Sistema-de-Misseis-RBS-70-na-Suecia/', NULL, 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34'),
(140, 'Submarino Riachuelo recebe cradle de vante', NULL, 'https://www.marinha.mil.br/prosub/node/161', NULL, 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34');
INSERT INTO `tb_noticia` (`id`, `titulo`, `descricao`, `link`, `imagem`, `clipping_id`, `created_at`, `updated_at`) VALUES
(141, 'Câmara vota projetos sobre segurança pública apoiados por "bancada da bala"', NULL, 'https://noticias.uol.com.br/cotidiano/ultimas-noticias/2017/11/07/camara-vota-projetos-sobre-seguranca-publica-apoiados-por-bancada-da-bala.htm', NULL, 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34'),
(142, 'O Sistema Prisional brasileiro e sua função ressocializadora', NULL, 'http://www.conteudojuridico.com.br/artigo,o-sistema-prisional-brasileiro-e-sua-funcao-ressocializadora,590025.html', NULL, 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34'),
(143, 'Governo corta pela metade investimento em monitoramento de fronteiras.', '<p>De 2016 para 2017, o investimento do governo no Sisfron (Sistema Integrado de Monitoramento de Fronteiras) despencou de R$ 285,7 milh&otilde;es para R$ 132,4 milh&otilde;es, uma redu&ccedil;&atilde;o de 54%.</p>', 'https://noticias.uol.com.br/cotidiano/ultimas-noticias/2018/03/05/governo-corta-pela-metade-investimento-em-monitoramento-de-fronteiras.htm', 'http://www.sintrafesc.org.br/wp-content/uploads/2018/03/Governo-corta-pela-metade-investimento-em-monitoramento-de-fronteiras-312x240.jpg', 19, '2018-03-16 21:27:41', '2018-03-16 21:53:16'),
(144, 'Embraer KC-390 está "97% desenvolvido", afirma FAB', '<p>A For&ccedil;a A&eacute;rea Brasileira vai receber 28 jatos KC-390 em 12 anos a partir da primeira entrega neste ano (FAB). O Embraer KC-390, nova aeronave multimiss&atilde;o de transporte militar do Brasil, j&aacute; est&aacute; &ldquo;97% desenvolvida...</p>', 'https://airway.uol.com.br/embraer-kc-390-esta-97-desenvolvido-afirma-fab/', 'http://www.fab.mil.br/sis/enoticias/imagens/pub/35977/i183115531784477.jpg', 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(145, 'Intervenção no RJ completa um mês à espera de resultados e de recursos para as polícias', '<p>A interven&ccedil;&atilde;o federal na Seguran&ccedil;a do Rio de Janeiro completa um m&ecirc;s nesta sexta-feira (16) sem apresentar muitos resultados nas ruas. Na pr&aacute;tica, a a&ccedil;&atilde;o militar se pautou, nestes primeiros dias, na troca das chefias das pol&iacute;cias</p>', 'https://g1.globo.com/rj/rio-de-janeiro/noticia/intervencao-no-rj-completa-um-mes-a-espera-de-resultados-e-de-recursos-para-as-policias.ghtml', 'https://s2.glbimg.com/xXQDmJP-qQ9VqYfR8M-tSU6_dAs=/0x0:3500x2289/1000x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/L/H/oAJsCcTuyJ9V1Y2hRkVg/intervencao1.jpg', 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(146, 'PF abre Pão Nosso contra corrupção no sistema prisional do Rio', '<p>A&nbsp;<strong><a href="http://tudo-sobre.estadao.com.br/policia-federal">Pol&iacute;cia Federal</a></strong> e o Minist&eacute;rio P&uacute;blico Federal, no Rio, abriram nesta ter&ccedil;a-feira, 13, a Opera&ccedil;&atilde;o P&atilde;o Nosso, nova fase da Lava Jato. O objetivo &eacute; investigar crimes de corrup&ccedil;&atilde;o, evas&atilde;o de divisas e lavagem de dinheiro</p>', 'http://politica.estadao.com.br/blogs/fausto-macedo/pf-abre-nova-fase-da-lava-jato-no-rio/', 'http://politica.estadao.com.br/blogs/fausto-macedo/wp-content/uploads/sites/41/2018/01/pf-maos-a-obra-fabio-motta-estadao.jpg', 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(147, 'Fronteira de MS com Paraguai é “deserto” aberto para o crime', NULL, 'https://www.campograndenews.com.br/cidades/interior/fronteira-de-ms-com-paraguai-e-deserto-aberto-para-o-crime', NULL, 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(148, 'Confira os principais pontos do projeto que cria o Sistema Único de Segurança Pública', NULL, 'https://g1.globo.com/politica/blog/andreia-sadi/post/2018/03/01/confira-pontos-do-projeto-que-cria-o-sistema-unico-de-seguranca-publica.ghtml', NULL, 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(149, 'Especial sistema penitenciário veja os números da crise por estado', NULL, 'https://folhadirigida.com.br/noticias/concurso/sistema-prisional/especial-sistema-penitenciario-veja-os-numeros-da-crise-por-estado-1', NULL, 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(150, 'Iniciada a montagem do submarino Riachuelo: os desafios, antes, agora e depois', NULL, 'http://www.defesanet.com.br/prosub/noticia/28664/Dagnino---Iniciada-a-Montagem-do-Submarino-Riachuelo--Os-Desafios--Antes--Agora-e-Depois/', NULL, 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41'),
(151, 'Guarani 300 será entregue pela IVECO para o Exército Brasileiro', NULL, 'http://www.defesanet.com.br/guarani/noticia/28721/Guarani-300-sera-entregue-pela-IVECO-para-o-Exercito-Brasileiro/', NULL, 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_orientacao`
--

CREATE TABLE `tb_orientacao` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clipping_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_orientacao`
--

INSERT INTO `tb_orientacao` (`id`, `texto`, `clipping_id`, `created_at`, `updated_at`) VALUES
(2, '<p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A25A29D4FC015A3842667131BE" rel="noopener noreferrer" target="_blank">IN TCU 76/2016</a> - Altera a Instru&ccedil;&atilde;o Normativa - TCU n&ordm; 71, de 28 de novembro de 2012, que disp&otilde;e sobre a instaura&ccedil;&atilde;o, a organiza&ccedil;&atilde;o e o encaminhamento ao Tribunal de Contas da Uni&atilde;o dos processos de tomada de contas especial.</p>', 2, '2018-03-05 18:46:48', '2018-03-05 18:46:48'),
(4, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:107248173124840:T:::P17_XCOD_REL_DET:6022" rel="noopener noreferrer" target="_blank">Memorando‐Circular 29/2017</a>‐Segecex, de 19/05/2017. Divulga&ccedil;&atilde;o do item 9.5 do Ac&oacute;rd&atilde;o 914/2017‐TCU‐ Plen&aacute;rio:&quot;n&atilde;o compete &agrave;s unidades t&eacute;cnicas deixar de cumprir ac&oacute;rd&atilde;o a pretexto de error in judicando no voto aprovado pelo TCU</p>', 4, '2018-03-05 19:09:18', '2018-03-05 19:09:18'),
(5, '<p><a href="http://www.planalto.gov.br/ccivil_03/_ato2015-2018/2017/Mpv/mpv781.htm#art3" rel="noopener noreferrer" target="_blank">MEDIDA PROVIS&Oacute;RIA N&ordm; 781, DE 23 DE MAIO DE 2017</a> ‐ Altera a Lei Complementar n&ordm; 79, de 7 de janeiro de 1994, para dispor sobre a transfer&ecirc;ncia de recursos financeiros do Fundo Penitenci&aacute;rio Nacional ﴾...﴿</p>', 5, '2018-03-05 19:30:26', '2018-03-05 19:30:26'),
(6, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:4913232562061:T:::P17_XCOD_REL_DET:6082" rel="noopener noreferrer" target="_blank">Memorando‐Circular 31/2017‐Segecex</a>, de 02/06/2017. Edi&ccedil;&atilde;o do relat&oacute;rio de auditoria gerado pelo Fiscalis 2015&nbsp;</p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039C79175D05" rel="noopener noreferrer" target="_blank">Manual de Acompanhamento publicado</a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039CFEEE5F8F" rel="noopener noreferrer" target="_blank">Fluxo do acompanhamento do tipo Racom</a></p>', 6, '2018-03-05 20:08:10', '2018-03-05 20:09:35'),
(7, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:13665977514403:T:::P17_XCOD_REL_DET:6142" rel="noopener noreferrer" target="_blank">Memorando-Circular 35/2017</a>-Segecex, de 21/06/2017.&nbsp;</p><p><a href="http://portal.tcu.gov.br/controle-externo/procedimentos-e-normas-processuais/informativo-orientar/beneficios-de-controle-volume-de-recursos-fiscalizados-vrf.htm" rel="noopener noreferrer" target="_blank">Benef&iacute;cios de controle - Volume de Recursos Fiscalizados (VRF)</a></p>', 7, '2018-03-05 21:28:11', '2018-03-05 21:28:11'),
(8, '<p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:15336360132810:T:::P17_XCOD_REL_DET:6162" rel="noopener noreferrer" target="_blank"><em>Memorando-Circular 36/2017-Segecex, de 22/06/2017.&nbsp;</em></a></p><p>Normas de Fiscaliza&ccedil;&atilde;o:&nbsp;</p><p><strong>Acompanhamento</strong></p><p>Acompanhamento em uma p&aacute;gina - Saiba Mais&nbsp;</p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A258FE9A840159039CFEEE5F8F" rel="noopener noreferrer" target="_blank">Fluxo do acompanhamento do tipo Aco</a></p>', 9, '2018-03-05 21:44:32', '2018-03-05 21:44:32'),
(9, '<p><a href="http://www.agu.gov.br/page/content/detail/id_conteudo/578607" rel="noopener noreferrer" target="_blank">AGU atualiza modelos de editais de licita&ccedil;&otilde;es utilizados pela administra&ccedil;&atilde;o p&uacute;blica</a></p>', 10, '2018-03-05 22:06:53', '2018-03-05 22:06:53'),
(10, '<p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D81DFAD485C" rel="noopener noreferrer" target="_blank">Padr&otilde;es de Levantamento</a></p><p>A Portaria Segecex 15/2011 disciplina a realiza&ccedil;&atilde;o de levantamentos e aprova, preliminarmente, os Padr&otilde;es de Levantamento.</p>', 11, '2018-03-05 22:13:42', '2018-03-05 22:14:13'),
(11, '<p>Auditoria de Conformidade&nbsp;</p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A259ADCD370159B2FD99B04042" rel="noopener noreferrer" target="_blank">Padr&otilde;es de Auditoria de Conformidade (PAC) </a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A259ADCD370159B3013CB05B41" rel="noopener noreferrer" target="_blank">Orienta&ccedil;&otilde;es para Auditoria de Conformidade (OAC)</a></p>', 12, '2018-03-05 22:22:30', '2018-03-05 22:22:30'),
(12, '<p>Auditoria de Conformidade&nbsp;</p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D825A880877" rel="noopener noreferrer" target="_blank">Matriz Padr&atilde;o de Planejamento - Contratos</a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8265E21F30" rel="noopener noreferrer" target="_blank">Matriz Padr&atilde;o de Poss&iacute;veis Achados - Contratos</a></p>', 13, '2018-03-14 18:02:27', '2018-03-14 18:02:48'),
(13, '<p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:117507398011059:T:::P17_XCOD_REL_DET:6202" rel="noopener noreferrer" target="_blank">Memorando-Circular 39/2017-Segecex, de 03/08/2017.&nbsp;</a></p><p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:100485635963932:T:::P17_XCOD_REL_DET:6222" rel="noopener noreferrer" target="_blank">Memorando-Circular 40/2017-Segecex, de 04/08/2017.&nbsp;</a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82558D7980" rel="noopener noreferrer" target="_blank">Matriz Padr&atilde;o de Planejamento - Conv&ecirc;nios PI 507/11</a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D825EAA13EF" rel="noopener noreferrer" target="_blank">Matriz Padr&atilde;o de Poss&iacute;veis Achados - Conv&ecirc;nios PI 507/1</a></p>', 14, '2018-03-14 18:09:25', '2018-03-14 18:10:13'),
(14, '<p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D826A622AE5" rel="noopener noreferrer" target="_blank">Roteiro de verifica&ccedil;&atilde;o do relat&oacute;rio de auditoria&nbsp;</a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D82677C232B" rel="noopener noreferrer" target="_blank">Matriz de responsabiliza&ccedil;&atilde;o - Orienta&ccedil;&otilde;es para Auditoria de Conformidade </a></p><p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:103411218169951:T:::P17_XCOD_REL_DET:6302" rel="noopener noreferrer" target="_blank">Memorando-Circular 42/2017-Segecex</a>, de 17/08/2017.&nbsp;</p><p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:103411218169951:T:::P17_XCOD_REL_DET:6402" rel="noopener noreferrer" target="_blank">Memorando-Circular 44/2017-Segecex</a>, de 22/08/2017.</p>', 15, '2018-03-14 18:20:36', '2018-03-14 18:20:36'),
(15, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:106369880398007:T:::P17_XCOD_REL_DET:6362" rel="noopener noreferrer" target="_blank">MEMORANDO - 43/2017</a> Altera&ccedil;&atilde;o de modelo de comunica&ccedil;&atilde;o de cita&ccedil;&atilde;o por omiss&atilde;o no dever de prestar contas.&nbsp;</p><p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:106369880398007:T:::P17_XCOD_REL_DET:6322">MEMORANDO - 45/2017</a> Adequa&ccedil;&atilde;o das propostas de envio de c&oacute;pia das delibera&ccedil;&otilde;es do Tribunal.&nbsp;</p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A14D8D5AA6014D8D8277322DA6" rel="noopener noreferrer" target="_blank">Manual de Auditoria Operacional </a></p><p><a href="http://portal.tcu.gov.br/lumis/portal/file/fileDownload.jsp?fileId=8A8182A25EC59C0F015F06AC08502C15" rel="noopener noreferrer" target="_blank">Roteiro de Auditoria de Gest&atilde;o de Riscos</a></p>', 16, '2018-03-14 18:29:58', '2018-03-14 18:29:58'),
(16, '<p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:15156622008934:T:::P17_XCOD_REL_DET:6422" rel="noopener noreferrer" target="_blank">Memorando 47/2017</a> Orienta&ccedil;&atilde;o &agrave;s unidades t&eacute;cnicas do TCU para que verifiquem a situa&ccedil;&atilde;o expressa no item 9.7 do Ac&oacute;rd&atilde;o 1960/2017-TCU-Plen&aacute;rio.<br><a href="https://contas.tcu.gov.br/ords/f?p=434:17:11630191484546:T:::P17_XCOD_REL_DET:6523" rel="noopener noreferrer" target="_blank">Memorando 58/2017 </a>Amplia&ccedil;&atilde;o de acesso pelas partes e seus representantes legais &agrave;s pe&ccedil;as de processos de controle externo.</p>', 17, '2018-03-14 18:47:20', '2018-03-14 18:47:20'),
(17, '<p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:23791100823638:T:::P17_XCOD_REL_DET:6522" rel="noopener noreferrer" target="_blank">Memorando 56/2017&nbsp;</a></p><p>Ac&oacute;rd&atilde;o 2321/2017-TCU-Plen&aacute;rio (TC 010.336/2017-6). Solicita&ccedil;&atilde;o do Congresso Nacional (SCN).&nbsp;</p><p><a href="https://contas.tcu.gov.br/ords/f?p=434:17:6762817762221:T:::P17_XCOD_REL_DET:6482" rel="noopener noreferrer" target="_blank">Memorando 53/2017 </a></p><p>Solicita&ccedil;&atilde;o de emiss&atilde;o de passagens a&eacute;reas sem a anteced&ecirc;ncia m&iacute;nima.</p>', 18, '2018-03-15 18:51:34', '2018-03-15 18:51:34'),
(18, '<p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:115334449537197:T:::P17_XCOD_REL_DET:6723">Memorando-Circular 1/2018-Segecex</a>, de 18/01/2018.<br>Instru&ccedil;&otilde;es de m&eacute;rito relativas a fatos que ensejaram decreta&ccedil;&atilde;o de medidas cautelares.</p><p><a href="https://contas.tcu.gov.br/pls/apex/f?p=434:17:115334449537197:T:::P17_XCOD_REL_DET:6822">Memorando-Circular 10/2018-Segecex</a>, de 21/01/2018.<br>Uniformiza&ccedil;&atilde;o de procedimentos relativos ao envio de comunica&ccedil;&otilde;es processuais destinadas a representantes legais e procuradores.</p>', 19, '2018-03-16 21:27:41', '2018-03-16 21:27:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`id`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Não Definido', '2018-03-19 15:14:48', '2018-03-15 15:17:30'),
(2, 'Acompanhamento', '2018-03-15 15:17:59', '2018-03-15 15:18:00'),
(3, 'Conformidade', '2018-03-15 15:18:08', '2018-03-15 15:18:09'),
(4, 'Fiscalização', '2018-03-15 15:18:20', '2018-03-15 15:18:21'),
(5, 'Inspenções', '2018-03-15 15:19:20', '2018-03-15 15:19:21'),
(6, 'Levantamento', '2018-03-15 15:19:25', '2018-03-15 15:19:21'),
(7, 'Licitações', '2018-03-15 15:19:25', '2018-03-15 15:19:22'),
(8, 'Operacional', '2018-03-15 15:19:26', '2018-03-15 15:19:23'),
(9, 'Orientação', '2018-03-15 15:19:27', '2018-03-15 15:19:23'),
(10, 'Estudos e Ferramentas', '2018-03-15 15:19:27', '2018-03-15 15:19:24'),
(11, 'Memorando', '2018-03-19 15:14:48', '2018-03-17 01:02:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Helton', 'heltonos@tcu.gov.br', '$2y$10$uUHL.cuuKEwg9sbXa47RaeMFKt91aQQTT4vw2E11rYJkH43z5E4Ey', 'BL4hEoo2waYSkDCqwnl3RpSNKMWDz9VjPPKUjHn5BkVZtMjpDiqddKt2XFlK', '2018-03-15 19:47:31', '2018-03-15 19:47:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orientacoes_rascunhos`
--
ALTER TABLE `orientacoes_rascunhos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pesquisa_noticias`
--
ALTER TABLE `pesquisa_noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processos`
--
ALTER TABLE `processos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_clipping`
--
ALTER TABLE `tb_clipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_legislacao`
--
ALTER TABLE `tb_legislacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_legislacao_clipping_id_foreign` (`clipping_id`);

--
-- Indexes for table `tb_noticia`
--
ALTER TABLE `tb_noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_noticia_clipping_id_foreign` (`clipping_id`);

--
-- Indexes for table `tb_orientacao`
--
ALTER TABLE `tb_orientacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orientacao_clipping_id_foreign` (`clipping_id`);

--
-- Indexes for table `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orientacoes_rascunhos`
--
ALTER TABLE `orientacoes_rascunhos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `pesquisa_noticias`
--
ALTER TABLE `pesquisa_noticias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `processos`
--
ALTER TABLE `processos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_clipping`
--
ALTER TABLE `tb_clipping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_legislacao`
--
ALTER TABLE `tb_legislacao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_noticia`
--
ALTER TABLE `tb_noticia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `tb_orientacao`
--
ALTER TABLE `tb_orientacao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_legislacao`
--
ALTER TABLE `tb_legislacao`
  ADD CONSTRAINT `tb_legislacao_clipping_id_foreign` FOREIGN KEY (`clipping_id`) REFERENCES `tb_clipping` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tb_noticia`
--
ALTER TABLE `tb_noticia`
  ADD CONSTRAINT `tb_noticia_clipping_id_foreign` FOREIGN KEY (`clipping_id`) REFERENCES `tb_clipping` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `tb_orientacao`
--
ALTER TABLE `tb_orientacao`
  ADD CONSTRAINT `tb_orientacao_clipping_id_foreign` FOREIGN KEY (`clipping_id`) REFERENCES `tb_clipping` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

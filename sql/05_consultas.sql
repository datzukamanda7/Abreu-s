-- =============================================================
-- BANCO DE DADOS I -- Abreu's
-- Script 05: Consultas / Relatorios
-- =============================================================


--------------------------------------------------------------
-- 1. Relatório de cadastros com pendência documental
-- Mostra moradores que ainda não entregaram documentos obrigatórios
--------------------------------------------------------------

SELECT 
    m.ID,
    m.Nome AS Morador,
    m.CPF,
    m.Quadra,
    m.Lote,
    n.Nome AS Nucleo,
    mun.Nome AS Municipio,
    mun.Estado,
    c.Nome AS Colaborador,
    d.Ficha_de_cadastro,
    d.RG_CPF_CNH
FROM MORADOR m
LEFT JOIN DOCUMENTO d ON m.ID = d.MORADOR_ID
LEFT JOIN NUCLEO n ON m.NUCLEO_ID = n.ID
LEFT JOIN MUNICIPIO mun ON n.MUNICIPIO_ID = mun.ID
LEFT JOIN COLABORADOR c ON n.ID = c.NUCLEO_ID
WHERE d.Ficha_de_cadastro IS NULL OR d.RG_CPF_CNH IS NULL
ORDER BY m.ID;

-- ============================================================


--------------------------------------------------------------
-- 2. Relatório de processos em andamento
-- Mostra moradores cujo processo está "Na instituição" ou "Em execução de processo"
--------------------------------------------------------------

SELECT 
    m.ID AS Morador_ID,
    m.Nome AS Morador,
    m.CPF,
    n.Nome AS Nucleo,
    mun.Nome AS Municipio,
    mun.Estado,
    d.Status,
    c.Nome AS Colaborador
FROM MORADOR m
LEFT JOIN DOCUMENTO d ON m.ID = d.MORADOR_ID
LEFT JOIN NUCLEO n ON m.NUCLEO_ID = n.ID
LEFT JOIN MUNICIPIO mun ON n.MUNICIPIO_ID = mun.ID
LEFT JOIN COLABORADOR c ON n.ID = c.NUCLEO_ID
WHERE d.Status IN ('Na instituição', 'Em execução de processo')
ORDER BY d.Status, m.Nome;

-- ============================================================

--------------------------------------------------------------
-- 3. Relatório de processos finalizados
-- Mostra moradores cujo processo já foi concluído
--------------------------------------------------------------

SELECT 
    m.ID AS Morador_ID,
    m.Nome AS Morador,
    m.CPF,
    n.Nome AS Nucleo,
    mun.Nome AS Municipio,
    mun.Estado,
    d.Status,
    c.Nome AS Colaborador
FROM MORADOR m
LEFT JOIN DOCUMENTO d ON m.ID = d.MORADOR_ID
LEFT JOIN NUCLEO n ON m.NUCLEO_ID = n.ID
LEFT JOIN MUNICIPIO mun ON n.MUNICIPIO_ID = mun.ID
LEFT JOIN COLABORADOR c ON n.ID = c.NUCLEO_ID
WHERE d.Status = 'Finalizado'
ORDER BY m.Nome;

-- ============================================================

--------------------------------------------------------------
-- 4. Relatório geral: Morador + Núcleo + Município
-- Mostra todos os moradores com seus núcleos e municípios
--------------------------------------------------------------

SELECT 
    m.ID,
    m.Nome AS Morador,
    m.Quadra,
    m.Lote,
    n.Nome AS Nucleo,
    mun.Nome AS Municipio,
    mun.Estado
FROM MORADOR m
LEFT JOIN NUCLEO n ON m.NUCLEO_ID = n.ID
LEFT JOIN MUNICIPIO mun ON n.MUNICIPIO_ID = mun.ID
ORDER BY mun.Nome, n.Nome, m.Nome;

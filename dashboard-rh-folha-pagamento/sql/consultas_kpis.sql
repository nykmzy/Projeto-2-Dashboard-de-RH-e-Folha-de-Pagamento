SELECT COUNT(*) AS total_colaboradores
FROM Funcionarios;

SELECT ROUND(AVG(salario),2) AS media_salarial
FROM Funcionarios;

SELECT
    setor,
    COUNT(*) AS total
FROM Funcionarios
GROUP BY setor
ORDER BY total DESC;

SELECT
    YEAR(data_admissao) AS ano,
    MONTH(data_admissao) AS mes,
    COUNT(*) AS total
FROM Funcionarios
GROUP BY
    YEAR(data_admissao),
    MONTH(data_admissao)
ORDER BY ano, mes;

Turnover (%) =
(Desligamentos / Total Funcionários) * 100

SELECT
(
    COUNT(DISTINCT funcionario_id) * 100.0
    /
    (SELECT COUNT(*) FROM Funcionarios)
) AS turnover
FROM Desligamentos;
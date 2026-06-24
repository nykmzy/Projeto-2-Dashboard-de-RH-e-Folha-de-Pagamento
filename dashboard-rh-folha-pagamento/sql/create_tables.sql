CREATE TABLE Funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    setor VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE
);

CREATE TABLE Desligamentos (
    id INT PRIMARY KEY,
    funcionario_id INT,
    data_desligamento DATE,
    FOREIGN KEY (funcionario_id)
    REFERENCES Funcionarios(id)
);
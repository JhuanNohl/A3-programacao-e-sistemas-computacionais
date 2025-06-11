-- Criação do banco de dados e tabelas para o sistema de gestão de academia
CREATE DATABASE IF NOT EXISTS academia;
USE academia;

-- Tabela de Planos
CREATE TABLE planos (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL
);

-- Tabela de Alunos
CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco TEXT,
    data_matricula DATE NOT NULL,
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES planos(id_plano)
);

-- Tabela de Professores
CREATE TABLE professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    especialidade VARCHAR(100),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela de Treinos
CREATE TABLE treinos (
    id_treino INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    objetivo TEXT,
    data_inicio DATE,
    data_fim DATE,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

-- Tabela de Exercícios
CREATE TABLE exercicios (
    id_exercicio INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    grupo_muscular VARCHAR(50)
);

-- Tabela de associação: Treino_Exercicio
CREATE TABLE treino_exercicio (
    id_treino INT NOT NULL,
    id_exercicio INT NOT NULL,
    series INT,
    repeticoes INT,
    carga DECIMAL(5,2),
    PRIMARY KEY (id_treino, id_exercicio),
    FOREIGN KEY (id_treino) REFERENCES treinos(id_treino),
    FOREIGN KEY (id_exercicio) REFERENCES exercicios(id_exercicio)
);

-- Tabela de Presenças
CREATE TABLE presencas (
    id_presenca INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    data DATE NOT NULL,
    hora_entrada TIME,
    hora_saida TIME,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

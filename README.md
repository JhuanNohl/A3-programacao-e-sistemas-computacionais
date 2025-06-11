🏋️‍♂️ Sistema de Gestão de Academia

Este projeto é um sistema completo para gerenciamento de uma academia de médio porte, desenvolvido com foco acadêmico. Ele inclui a modelagem de banco de dados, entidades em Java usando JPA/Hibernate, e está preparado para integração com Spring Boot.

📚 Funcionalidades

Cadastro de alunos e seus dados pessoais

Registro de planos de assinatura

Gerenciamento de professores e suas especialidades

Criação e acompanhamento de treinos por aluno

Associação de exercícios a treinos com controle de séries, repetições e carga

Registro de presença de alunos

Relacionamentos completos entre entidades

📁 Estrutura do Projeto

academia/
    src/
        main/
            java/com/seuprojeto/academia/
                model/           # Entidades JPA
                repository/      # Interfaces JpaRepository
                service/         # Regras de negócio (opcional)
                controller/      # REST controllers (futuro)
            resources/
                application.properties
    script_banco_academia.sql
    README.md

🛠️ Tecnologias Utilizadas
Java 17+

Spring Boot (pré-configurado para uso futuro)

JPA / Hibernate

MySQL ou MariaDB

Maven

(Opcional) Spring Data REST / Spring Security

▶️ Como Executar o Projeto

1. Clonar o repositório

bash
Copiar
Editar
git clone https://github.com/JhuanNohl/A3-programacao-e-sistemas-computacionais.git
cd academia-projeto

2. Configurar o Banco de Dados

Crie o banco e execute o script SQL:

sql
Copiar
Editar
CREATE DATABASE academia;
USE academia;

-- Execute o script_banco_academia.sql
Ou via terminal:

bash
Copiar
Editar
mysql -u root -p academia < script_banco_academia.sql

3. Configurar o application.properties

No arquivo src/main/resources/application.properties:

properties
Copiar
Editar
spring.datasource.url=jdbc:mysql://localhost:3306/academia
spring.datasource.username=root
spring.datasource.password=sua_senha

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

4. Executar o Projeto

Com o Maven configurado:

bash
Copiar
Editar
./mvnw spring-boot:run

🗃️ Entidades do Sistema

Entidade	Descrição
Aluno	Informações do aluno, plano, treinos, presença
Professor	Especialidade e treinos orientados
Treino	Criado por professor, vinculado a aluno
Exercício	Cadastrado no sistema e associado a treinos
Plano	Planos de assinatura
TreinoExercicio	Relaciona treino e exercício (com carga, reps)
Presenca	Registro de presença diária do aluno

✅ Próximos Passos (Sugeridos)

Criar camada de serviços (service/) para regras de negócio

Implementar os controllers REST para integração com front-end

Criar um front-end com React, Angular ou Vue

Implementar autenticação com Spring Security

Criar relatórios com JPQL ou QueryDSL

🧑‍💻 Autor

Projeto acadêmico desenvolvido como parte de uma disciplina de banco de dados e desenvolvimento backend com Java.

Caso deseje contribuições, dúvidas ou melhoria no projeto, fique à vontade para abrir uma issue ou pull request.

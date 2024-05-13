# API de Certificações

Este é um projeto de API de certificações oriundo da NLW (Next Level Week) de fevereiro de 2024.

## Índice
- [Pré-requisitos](#pré-requisitos)
- [Instruções de Instalação](#instruções-de-instalação)
- [Tecnologias Empregadas](#tecnologias-empregadas)

## Pré-requisitos
Antes de iniciar, certifique-se de ter instalado:
- Java JDK 8 ou mais recente
- Maven 3.x ou mais recente
- Uma IDE ou um editor de texto 
- Docker e Docker Compose

## Instruções de Instalação
Para executar a aplicação localmente, siga estes passos:
1. Clone o repositório para seu computador usando: `git clone https://github.com/Lucas-Welter/certification_nlw.git`
2. Abra um terminal e navegue até a pasta do projeto: `cd certification_nlw`
3. Utilize o comando: `docker compose up -d` para configurar os contêineres Docker.
4. Para iniciar a aplicação, execute: `mvn spring-boot:run`
5. Acesse a aplicação em: `http://localhost:8085`

## Tecnologias Empregadas
- Spring Boot
- Maven
- Java
- Spring Data JPA
- Hibernate
- Lombok
- PostgreSQL

# SGP API - Sistema de Gerenciamento de Projetos

[![Java](https://img.shields.io/badge/Java-17-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.4.5-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Maven](https://img.shields.io/badge/Maven-3.9.9-red.svg)](https://maven.apache.org/)

## 📋 Sobre o Projeto

O **SGP API** é uma API REST desenvolvida em Java com Spring Boot para gerenciamento de projetos, tarefas e usuários. O sistema permite o controle completo do ciclo de vida de projetos, desde a criação até a conclusão, com gestão de tarefas associadas e controle de usuários responsáveis.

## 🚀 Funcionalidades

### 👥 Gestão de Usuários
- ✅ Cadastro, edição e exclusão de usuários
- ✅ Validação de CPF e e-mail
- ✅ Controle de status (Ativo, Inativo, Bloqueado)
- ✅ Cálculo automático de idade
- ✅ Retorno de dados via DTO (sem exposição da senha)

### 📊 Gestão de Projetos
- ✅ CRUD completo de projetos
- ✅ Controle de status (Ativo, Concluído, Cancelado)
- ✅ Vinculação com usuário responsável
- ✅ Controle de datas de início e conclusão

### 📝 Gestão de Tarefas
- ✅ CRUD completo de tarefas
- ✅ Sistema de prioridades (Baixa, Média, Alta)
- ✅ Controle de status (Pendente, Fazendo, Concluída)
- ✅ Vinculação com projetos e usuários
- ✅ Controle de datas de criação e conclusão

## 🏗️ Arquitetura

O projeto segue uma arquitetura em camadas bem definida:

```
src/main/java/com/sgp/api/
├── 🎯 controller/          # Controladores REST
├── 📦 model/              # Entidades JPA
├── 🗄️ repository/         # Repositórios de dados
├── ⚙️ services/           # Regras de negócio
├── 📋 dto/                # Data Transfer Objects
├── 🔧 configuration/      # Configurações
├── 📊 constants/          # Enums e constantes
└── ⚠️ exception/          # Tratamento de exceções
```

## 🛠️ Tecnologias Utilizadas

- **Java 17** - Linguagem de programação
- **Spring Boot 3.4.5** - Framework principal
- **Spring Data JPA** - Persistência de dados
- **Spring Web** - Desenvolvimento web
- **Spring Validation** - Validação de dados
- **MySQL** - Banco de dados
- **Lombok** - Redução de código boilerplate
- **Maven** - Gerenciamento de dependências

## 📋 Pré-requisitos

- Java 17 ou superior
- Maven 3.6 ou superior
- MySQL 8.0 ou superior

## 🚀 Como Executar

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/sgp-api.git
   cd sgp-api
   ```

2. **Configure o banco de dados:**
   - Crie um banco de dados MySQL chamado `sgp`
   - Ajuste as configurações em `src/main/resources/application.properties`

3. **Execute a aplicação:**
   ```bash
   ./mvnw spring-boot:run
   ```
   
   Ou no Windows:
   ```cmd
   mvnw.cmd spring-boot:run
   ```

4. **A API estará disponível em:** `http://localhost:8080`

## 📚 Endpoints da API

### 👥 Usuários (`/usuarios`)

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| `GET` | `/usuarios` | Lista todos os usuários |
| `GET` | `/usuarios/{id}` | Busca usuário por ID |
| `POST` | `/usuarios` | Cadastra novo usuário |
| `PUT` | `/usuarios/{id}` | Atualiza usuário |
| `DELETE` | `/usuarios/{id}` | Remove usuário |

### 📊 Projetos (`/projetos`)

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| `GET` | `/projetos` | Lista todos os projetos |
| `GET` | `/projetos/{id}` | Busca projeto por ID |
| `POST` | `/projetos` | Cadastra novo projeto |
| `PUT` | `/projetos/{id}` | Atualiza projeto |
| `DELETE` | `/projetos/{id}` | Remove projeto |

### 📝 Tarefas (`/tarefas`)

| Método | Endpoint | Descrição |
|--------|----------|-----------|
| `GET` | `/tarefas` | Lista todas as tarefas |
| `GET` | `/tarefas/{id}` | Busca tarefa por ID |
| `POST` | `/tarefas` | Cadastra nova tarefa |
| `PUT` | `/tarefas/{id}` | Atualiza tarefa |
| `DELETE` | `/tarefas/{id}` | Remove tarefa |

## 📄 Exemplos de Uso

### Cadastrar Usuário
```json
POST /usuarios
{
  "nome": "João Silva",
  "cpf": "123.456.789-00",
  "email": "joao@email.com",
  "senha": "senha123",
  "dataNascimento": "15/05/1990",
  "status": "ATIVO"
}
```

### Cadastrar Projeto
```json
POST /projetos
{
  "nome": "Sistema Web",
  "descricao": "Desenvolvimento de sistema web para gestão",
  "dataInicio": "2024-01-15",
  "status": "ATIVO",
  "responsavel": {
    "id": 1
  }
}
```

### Cadastrar Tarefa
```json
POST /tarefas
{
  "titulo": "Implementar autenticação",
  "descricao": "Desenvolver sistema de login",
  "dataCriacao": "2024-01-16",
  "prioridade": "ALTA",
  "status": "PENDENTE",
  "projeto": {
    "id": 1
  },
  "usuario": {
    "id": 1
  }
}
```

## 🔧 Configurações

### application.properties
```properties
# Configurações do banco de dados
spring.datasource.url=jdbc:mysql://localhost:3306/sgp
spring.datasource.username=root
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
```

## 🌐 CORS

A API está configurada para aceitar requisições de qualquer origem (`*`) nos métodos GET, POST, PUT e DELETE.

## ⚠️ Tratamento de Exceções

O sistema possui tratamento global de exceções que:
- Valida dados de entrada
- Retorna erros formatados em JSON
- Registra erros inesperados

## 🤝 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 👨‍💻 Autor

Desenvolvido por Vitor Santos.

---

⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!

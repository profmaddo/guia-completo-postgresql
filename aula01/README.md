# Configuração do PostgreSQL com Northwind Database

Este projeto configura um ambiente PostgreSQL usando Docker com o banco de dados Northwind.

## Pré-requisitos

- Docker
- Docker Compose
- curl (para baixar o arquivo northwind.sql)

## Como usar

1. Torne o script de importação executável:
```bash
chmod +x import_northwind.sh
```

2. Execute o script de importação:
```bash
./import_northwind.sh
```

3. Para acessar o banco de dados usando psql:
```bash
docker exec -it postgres_northwind psql -U postgres -d northwind
```

## Credenciais do banco de dados

- Usuário: postgres
- Senha: postgres
- Banco de dados: northwind
- Porta: 5432

## Comandos úteis do psql

- `\l` - Lista todos os bancos de dados
- `\dt` - Lista todas as tabelas
- `\d nome_da_tabela` - Mostra a estrutura de uma tabela específica
- `\q` - Sai do psql

## Consultas SQL básicas no psql

### Como listar todas as tabelas

Dentro do psql, digite:
```
\dt
```

### Como listar o conteúdo da tabela categories

Dentro do psql, digite:
```
SELECT * FROM categories;
```

O resultado será exibido na tela. Você pode executar qualquer comando SQL dessa forma, sem sair do psql.

## Parar os containers

Para parar os containers, execute:
```bash
docker-compose down
```

Para parar os containers e remover os volumes (isso apagará todos os dados):
```bash
docker-compose down -v
``` 
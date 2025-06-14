#!/bin/bash

# Baixar o arquivo northwind.sql se não existir
if [ ! -f northwind.sql ]; then
    echo "Baixando o arquivo northwind.sql..."
    curl -o northwind.sql https://raw.githubusercontent.com/pthom/northwind_psql/master/northwind.sql
fi

# Iniciar os containers
echo "Iniciando os containers..."
docker-compose up -d

# Aguardar o PostgreSQL iniciar
echo "Aguardando o PostgreSQL iniciar..."
sleep 10

# Importar o banco de dados
echo "Importando o banco de dados Northwind..."
docker exec -i postgres_northwind psql -U postgres -d northwind < northwind.sql

echo "Importação concluída!"
echo "Para acessar o banco de dados, use o comando:"
echo "docker exec -it postgres_northwind psql -U postgres -d northwind" 
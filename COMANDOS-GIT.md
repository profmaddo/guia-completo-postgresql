# Comandos Git Básicos

Este guia contém os principais comandos Git utilizados no desenvolvimento do projeto PostgreSQL com Northwind Database.

## Configuração Inicial

```bash
# Configurar nome do usuário
git config --global user.name "Seu Nome"

# Configurar email do usuário
git config --global user.email "seu.email@exemplo.com"
```

## Comandos Básicos

### Inicializar um Repositório
```bash
# Iniciar um novo repositório Git
git init

# Clonar um repositório existente
git clone https://github.com/seu-usuario/seu-repositorio.git
```

### Verificar Status
```bash
# Ver o status dos arquivos
git status

# Ver o histórico de commits
git log
```

### Adicionar e Commitar
```bash
# Adicionar arquivos ao stage
git add arquivo.txt
git add .  # Adiciona todos os arquivos

# Criar um commit
git commit -m "Mensagem descritiva do commit"
```

### Trabalhando com Branches
```bash
# Listar branches
git branch

# Criar nova branch
git branch nome-da-branch

# Mudar para uma branch
git checkout nome-da-branch

# Criar e mudar para uma nova branch
git checkout -b nome-da-branch
```

### Sincronização com Repositório Remoto
```bash
# Adicionar repositório remoto
git remote add origin https://github.com/seu-usuario/seu-repositorio.git

# Ver repositórios remotos
git remote -v

# Baixar alterações do repositório remoto
git pull origin main

# Enviar alterações para o repositório remoto
git push origin main

# Forçar push (use com cautela!)
git push -f origin main
```

### Resolvendo Conflitos
```bash
# Atualizar repositório local
git pull origin main

# Após resolver conflitos manualmente
git add .
git commit -m "Resolvendo conflitos"
git push origin main
```

## Comandos Úteis para o Projeto

### Desfazer Alterações
```bash
# Descartar alterações em um arquivo
git checkout -- arquivo.txt

# Desfazer último commit mantendo as alterações
git reset HEAD~1

# Desfazer último commit descartando as alterações
git reset --hard HEAD~1
```

### Verificar Diferenças
```bash
# Ver diferenças entre arquivos modificados
git diff

# Ver diferenças entre commits
git diff commit1 commit2
```

## Boas Práticas

1. Sempre faça commits com mensagens descritivas
2. Mantenha seu repositório local atualizado com `git pull`
3. Crie branches para novas funcionalidades
4. Resolva conflitos antes de fazer push
5. Evite usar `git push -f` em branches compartilhados

## Dicas para o Projeto PostgreSQL

- Faça commit das alterações no banco de dados em arquivos SQL separados
- Mantenha o `docker-compose.yml` e scripts de configuração versionados
- Documente alterações importantes no README.md
- Use branches para testar diferentes configurações do PostgreSQL 
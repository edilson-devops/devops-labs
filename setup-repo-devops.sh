#!/usr/bin/env bash
# setup-repo-devops.sh
# Script para organizar repositório DevOps Labs (híbrido: aprendizado + profissional)
# Ubuntu / WSL / Linux

set -euo pipefail

echo "==> Criando estrutura de pastas DevOps Labs..."

# Array com todas as pastas
folders=(
  "00-git"
  "01-linux"
  "02-scripting"
  "03-docker"
  "04-kubernetes"
  "05-ci-cd"
  "06-terraform"
  "07-ansible"
  "99-projects"
)

# Loop para criar pastas e README inicial
for folder in "${folders[@]}"; do
  mkdir -p "$folder"
  readme="$folder/README.md"
  if [ ! -f "$readme" ]; then
    echo "# $folder" > "$readme"
    echo "Descrição da seção $folder" >> "$readme"
  fi
done

# Criando arquivo .gitignore básico
cat > .gitignore <<EOL
# Node
node_modules/

# Python
__pycache__/
*.pyc

# Terraform
*.tfstate
*.tfstate.backup
.terraform/

# Docker
*.log
*.env

# Outros
.DS_Store
EOL

# Commit inicial organizado
git add .
git commit -m "📁 Estrutura inicial do DevOps Labs (híbrido aprendizado + profissional)"
git push origin main

echo "==> Estrutura criada com sucesso e commit enviado ao GitHub!"
echo "Pastas criadas: ${folders[*]}"

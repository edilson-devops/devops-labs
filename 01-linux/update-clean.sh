#!/usr/bin/env bash
# update-clean.sh
# Atualiza o sistema e limpa cache
# Uso: sudo ./update-clean.sh

set -euo pipefail

echo "==> Atualizando pacotes..."
sudo apt update
sudo apt upgrade -y

echo "==> Removendo pacotes desnecessários..."
sudo apt autoremove -y
sudo apt autoclean -y

echo "==> Sistema atualizado e limpo com sucesso!"

#! /bin/bash

diretorio_backup="/home/dann/devops"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$nome_arquivo" "&diretorio_backup"
echo "Backup concluído em &nome_arquivo"

#! /bin/bash

diretorio_backup="/home/dann/devops"
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Adicionei o $ antes de diretorio_backup
tar -czf "$nome_arquivo" "$diretorio_backup"

echo "Backup concluído em $nome_arquivo"

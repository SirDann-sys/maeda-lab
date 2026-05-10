# 🐳 Guia de Instalação e Configuração: Docker Engine

Este documento detalha o processo completo de preparação, instalação e configuração do Docker no servidor **Maeda**, servindo como base para a orquestração de containers do laboratório.

---

## 📋 Pré-requisitos
- Sistema Operacional: **Ubuntu Server** (ou distribuições baseadas em Debian).
- Acesso SSH ou terminal local.
- Privilégios de superusuário (`sudo`).

---

## 🚀 1. Instalação via Script de Conveniência

Para garantir a versão estável mais recente, utilizamos o script oficial mantido pelo Docker.

 Passo a passo:
1. Baixar o instalador: "curl -fsSL [https://get.docker.com](https://get.docker.com) -o get-docker.sh"

2. Executar o script: "sudo sh get-docker.sh"

3. Remover o instalador (limpeza): "rm get-docker.sh"

## 🔑 2. Configuração de Pós-Instalação

Por padrão, o Docker exige privilégios de root. Para rodar comandos sem sudo, adicionamos o usuário ao grupo docker.

Comandos:
# Adiciona o usuário atual ao grupo docker
sudo usermod -aG docker $USER
**Nota: Para aplicar essa mudança, é necessário fazer logout e login novamente na sessão SSH, ou rodar o comando newgrp docker.**

## ✅ 3. Validação do Serviço

1. Verificar versão instalada: "docker --version"
2. Testar execução de container: "docker run hello-world"
3. Monitoramento de Processos: Verificamos via "btop" ou "systemctl status docker" se o daemon está ativo e consumindo recursos conforme o esperado.

## 🛠️ 4. Comandos de Gerenciamento Úteis

1. **Ação:** Iniciar Docker no boot **Comando:** sudo systemctl enable docker
2. **Ação:** Reiniciar o serviço **Comando:** sudo systemctl restart docker
3. **Ação:** Listar containers ativos **Comando:** docker ps
4. **Ação:** Ver consumo de recursos **Comando:** docker stats

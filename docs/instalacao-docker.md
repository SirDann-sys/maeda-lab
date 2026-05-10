# 🐳 Guia de Instalação e Configuração: Docker Engine

Este documento detalha o processo completo de preparação, instalação e configuração do Docker no servidor **Maeda**, servindo como base para a orquestração de containers do laboratório.

---

## 📋 Pré-requisitos

- **Sistema Operacional:** Ubuntu Server (ou distribuições baseadas em Debian)
- **Acesso:** SSH ou terminal local
- **Privilégios:** Superusuário (`sudo`)

---

## 🚀 1. Instalação via Script de Conveniência

Para garantir a versão estável mais recente, utilizamos o script oficial mantido pelo Docker.

**Passo a passo:**

```bash
# Baixar o instalador
curl -fsSL https://get.docker.com -o get-docker.sh

# Executar o script
sudo sh get-docker.sh

# Remover o instalador (opcional)
rm get-docker.sh
```

## 🔑 2. Configuração de Pós-Instalação

Por padrão, o Docker exige privilégios de root. Para rodar comandos sem `sudo`, adicione seu usuário ao grupo `docker`:

```
# Adiciona o usuário atual ao grupo dockersudo usermod -aG docker $USER
```

> **Nota:** Para aplicar essa mudança, faça logout e login novamente na sessão SSH, ou rode:
> 
> ```
> newgrp docker
> ```

----------

## ✅ 3. Validação do Serviço

```
# Verificar versão instalada
docker --version

# Testar execução de container
docker run hello-world

# Monitoramento do daemon
systemctl status docker
# Ou via ferramenta btop
btop
```

----------

## 🛠️ 4. Comandos de Gerenciamento Úteis



| Ação| Comando |
| :---        |    :----:   |
| Iniciar Docker no boot| sudo systemctl enable docker |
| Reiniciar o serviço| sudo systemctl restart docker |
| Listar containers ativos| docker ps |
| Ver consumo de recursos| docker stats |


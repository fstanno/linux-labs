
# Linux Labs

Projeto prático focado no desenvolvimento de habilidades em Linux voltadas para automação, monitoramento de sistema e suporte a ambientes de desenvolvimento.

---

## Objetivo

Desenvolver competências operacionais e práticas em Linux, incluindo:

* Manipulação de arquivos e diretórios
* Automação com Shell Script
* Monitoramento de recursos do sistema
* Uso de ferramentas de linha de comando
* Versionamento com Git

---

## Estrutura do Projeto

```
linux-labs/
├── scripts/
├── logs/
├── data/
```

* `scripts/` → scripts de automação
* `logs/` → arquivos gerados pelos scripts
* `data/` → dados auxiliares (reservado para expansão)

---

## Script: monitor.sh

Script responsável por coletar informações do sistema e registrar em log.

### Funcionalidades

* Coleta de uso de CPU
* Coleta de uso de memória
* Registro com timestamp
* Geração de arquivo de log

---

## Como executar

```bash
cd scripts
chmod +x monitor.sh
./monitor.sh
```

---

## Exemplos de uso

```bash
./monitor.sh
./monitor.sh --output custom.log
./monitor.sh --quiet

---

## Exemplo de saída

```
==== Mon Apr 15 ====
CPU: ...
MEMORY: ...
```

---

## Tecnologias utilizadas

* Linux (Ubuntu)
* Bash Script
* Git

---

## Evoluções planejadas

* Automatização da execução com cron
* Inclusão de novas métricas (disco, processos, rede)
* Melhoria na estrutura e formatação dos logs
* Criação de novos scripts de automação

---

## Contexto

Este projeto faz parte do desenvolvimento prático em Linux com foco em aplicação real no ambiente de desenvolvimento e operações, visando evolução para áreas como backend e DevOps.


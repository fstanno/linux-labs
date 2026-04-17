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

Script responsável por coletar métricas do sistema e registrar em arquivos de log para análise.

### Funcionalidades

* Coleta de uso de CPU
* Coleta de uso de memória
* Coleta de uso de disco
* Registro com timestamp
* Geração de arquivos de log
* Execução com parâmetros via linha de comando

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
```

---

## Parâmetros disponíveis

* `--output <arquivo>` → define o nome do arquivo de log
* `--quiet` → executa sem exibir saída no terminal

---

## Exemplo de saída

```
=================================
DATE: Fri Apr 17
HOST: ubuntu-VirtualBox
=================================
CPU:
%Cpu(s):  4.8 us,  0.0 sy,  0.0 ni, 95.2 id ...

MEMORY:
Mem: ...

DISK:
Filesystem      Size  Used Avail Use% Mounted on
...
```

---

## Tecnologias utilizadas

* Linux (Ubuntu)
* Bash Script
* Git

---

## Evoluções planejadas

* Automatização da execução com cron
* Inclusão de novas métricas (processos, rede)
* Melhoria na estrutura e formatação dos logs
* Criação de novos scripts de automação

---

## Contexto

Este projeto faz parte do desenvolvimento prático em Linux com foco em aplicação real no ambiente de desenvolvimento e operações, visando evolução para áreas como backend e DevOps.

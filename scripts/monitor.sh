#!/bin/bash

# ==============================
# Configuração de diretórios
# ==============================

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BASE_DIR="$(dirname "$SCRIPT_DIR")"

LOG_DIR="$BASE_DIR/logs"

# ==============================
# Parâmetros
# ==============================

QUIET=false
CUSTOM_LOG_FILE=""

while [[ "$#" -gt 0 ]]; do
  case $1 in
    --output)
      CUSTOM_LOG_FILE="$2"
      shift
      ;;
    --quiet)
      QUIET=true
      ;;
    *)
      echo "Parâmetro desconhecido: $1"
      exit 1
      ;;
  esac
  shift
done

# ==============================
# Definição do log
# ==============================

if [ -n "$CUSTOM_LOG_FILE" ]; then
  LOG_FILE="$LOG_DIR/$CUSTOM_LOG_FILE"
else
  LOG_FILE="$LOG_DIR/system-$(date +%Y-%m-%d_%H-%M-%S).log"
fi

# ==============================
# Preparação
# ==============================

mkdir -p "$LOG_DIR"

set -e

if [ "$QUIET" = true ]; then
  exec >> "$LOG_FILE" 2>&1
else
  exec > >(tee -a "$LOG_FILE") 2>&1
fi

# ==============================
# Funções
# ==============================

log_header() {
  echo "================================="
  echo "DATE: $(date)"
  echo "HOST: $(hostname)"
  echo "================================="
}

log_cpu() {
  echo "CPU:"
  top -bn1 | grep "Cpu(s)"
  echo ""
}

log_memory() {
  echo "MEMORY:"
  free -h
  echo ""
}

log_disk() {
  echo "DISK:"
  df -h
  echo ""
}

# ==============================
# Execução
# ==============================

log_header
log_cpu
log_memory
log_disk

echo "STATUS: SUCCESS"

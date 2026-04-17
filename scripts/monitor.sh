
#!/bin/bash

# ==============================
# Configurações
# ==============================
LOG_DIR="../logs"
LOG_FILE="$LOG_DIR/system.log"

# ==============================
# Funções
# ==============================

create_log_dir() {
  if [ ! -d "$LOG_DIR" ]; then
    mkdir -p "$LOG_DIR"
  fi
}

log_header() {
  echo "=================================" >> "$LOG_FILE"
  echo "DATE: $(date)" >> "$LOG_FILE"
  echo "HOST: $(hostname)" >> "$LOG_FILE"
  echo "=================================" >> "$LOG_FILE"
}

log_cpu() {
  echo "CPU:" >> "$LOG_FILE"
  top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
}

log_memory() {
  echo "MEMORY:" >> "$LOG_FILE"
  free -h >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
}

log_disk() {
  echo "DISK:" >> "$LOG_FILE"
  df -h >> "$LOG_FILE"
  echo "" >> "$LOG_FILE"
}

# ==============================
# Execução
# ==============================

create_log_dir
log_header
log_cpu
log_memory
log_disk













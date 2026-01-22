#!/bin/bash

# ==========================================================
# SCRIPT: port-scanner.sh
# DESCRIPCIÓN:
#   Script básico de escaneo de puertos TCP.
#   Permite identificar puertos abiertos en hosts de red
#   y detectar servicios potencialmente expuestos.
#
# FUNCIONALIDADES:
#   - Escaneo de múltiples hosts
#   - Lista configurable de puertos
#   - Detección de puertos abiertos
#   - Registro en logs
#   - Análisis de superficie de red
#
# AUTOR: Manuel Míguez
# ==========================================================


# ----- CONFIGURACIÓN -----

# Hosts a escanear
HOSTS=(
    "127.0.0.1"
    "localhost"
)

# Puertos a escanear
PORTS=(21 22 23 25 53 80 110 139 143 443 3306 8080)

# Timeout por conexión (segundos)
TIMEOUT=1

# Archivo de log
LOGFILE="$(dirname "$0")/port-scanner.log"


# ----- FUNCIÓN DE LOG -----
log() {
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $1" | tee -a "$LOGFILE"
}


# ----- INICIO -----
log "Iniciando escaneo de puertos..."
log "Hosts: ${HOSTS[*]}"
log "Puertos: ${PORTS[*]}"
echo "----------------------------------------"


# ----- ESCANEO -----
for HOST in "${HOSTS[@]}"; do
    log "Escaneando host: $HOST"

    for PORT in "${PORTS[@]}"; do
        
        # Intentar conexión TCP
        (echo > /dev/tcp/$HOST/$PORT) >/dev/null 2>&1

        if [[ $? -eq 0 ]]; then
            log "🟢 PUERTO ABIERTO: $HOST:$PORT"
        else
            log "🔴 Puerto cerrado: $HOST:$PORT"
        fi

    done

    echo "----------------------------------------"
done


log "Escaneo de puertos finalizado."

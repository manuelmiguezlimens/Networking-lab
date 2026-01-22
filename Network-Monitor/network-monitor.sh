#!/bin/bash

# ==================================================================
# SCRIPT: network-monitor.sh
# DESCRIPCIÓN:
#     Script de monitorización básica de red.
#     Comprueba conectivida, latencia y disponibilidad de hosts
#     mediante ping automático y genera logs.

# FUNCIONALIDADES:
#     - Monitorización continua de hosts
#     - Detección de caídas
#     - Medición de latencia
#     - Registro de eventos
#     - Alertas en consola
# ==================================================================

# ----- CONFIGURACION -----

# Hosts a monitorizar
HOSTS=(
    "8.8.8.8"
    "1.1.1.1"
    "google.com"
)

# Intervalo entre comprobaciones (segundos)
INTERVAL=5

# Umbral de latencia (ms)
LATENCY_THRESHOLD=100

# Archivo de log
LOGFILE="$(dirname "$0")/network-monitor.log"


# ----- FUNCIÓN DE LOG -----
log() {
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
    echo "$TIMESTAMP - $1" | tee -a "$LOGFILE"
}


# ----- INICIO -----
log "Iniciando monitorización de red..."
log "Hosts monitorizados: ${HOSTS[*]}"
log "Intervalo: ${INTERVAL}s | Umbral latencia: ${LATENCY_THRESHOLD}ms"
echo "----------------------------------------"


# ----- BUCLE PRINCIPAL -----
while true; do
    for HOST in "${HOSTS[@]}"; do
        
        # Ejecutar ping (1 paquete, timeout 1s)
        PING_OUTPUT=$(ping -c 1 -W 1 "$HOST" 2>/dev/null)

        # Comprobar si el host responde
        if [[ $? -ne 0 ]]; then
            log "❌ HOST CAÍDO: $HOST"
        else
            # Extraer latencia
            LATENCY=$(echo "$PING_OUTPUT" | grep 'time=' | sed -E 's/.*time=([0-9.]+).*/\1/')

            # Comprobar umbral de latencia
            if (( $(echo "$LATENCY > $LATENCY_THRESHOLD" | bc -l) )); then
                log "⚠️  LATENCIA ALTA: $HOST - ${LATENCY}ms"
            else
                log "✅ OK: $HOST - ${LATENCY}ms"
            fi
        fi
    done

    echo "----------------------------------------"
    sleep "$INTERVAL"
done
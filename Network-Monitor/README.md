# 🌐 Network Monitoring Basic

Laboratorio práctico de **monitorización básica de red en entornos Linux**, orientado a la detección de problemas de conectividad, latencia y disponibilidad de hosts.

Este laboratorio simula tareas reales de **operaciones de red (NOC)** y monitorización de infraestructura.

---

## 🎯 Objetivos del laboratorio

- Monitorizar conectividad de hosts en red
- Detectar nodos caídos
- Medir latencia de red
- Generar logs de eventos
- Lanzar alertas en consola
- Simular monitorización continua

---

## 📁 Estructura del laboratorio

```text
network-monitoring-basic/
├── network-monitor.sh
├── network-monitor.log
└── README.md
```

---

## 🧠 Funcionalidades

- Ping automático

- Monitorización continua

- Detección de pérdida de conectividad

- Control de latencia

- Umbral de alerta configurable

- Registro de eventos

- Alertas visuales en consola

---

## 🔧 Script: ```network-monitor.sh```

El script realiza:

- Comprobación periódica de hosts.

- Medición de latencia

- Identificación de caídas de red.

- Registro automático en logs

- Sistema de alertas en tiempo real.

----

## ▶️ Uso

```
chmod +x network-monitor.sh
./network-monitor.sh
```
---

## 📄 Logs

El laboratorio genera un archivo de log: ```network-monitor.log```

Este archivo permite:

- Revisar históricos de conectividad.

- Anilazar caídas.

- Detectar picos de latencia.

- Realizar troubleshooting.

---

## 🧪 Ejemplo de salida

```
2026-01-22 18:40:01 - ✅ OK: 8.8.8.8 - 22ms
2026-01-22 18:40:01 - ⚠️  LATENCIA ALTA: google.com - 145ms
2026-01-22 18:40:01 - ❌ HOST CAÍDO: 10.0.0.10
```

---

## 🎥 Vídeo de demostración

En este repositorio se incluye un vídeo de demostración donde se muestra:

Ejecución del script

Generación de reportes

Interpretación básica de resultados

👉 Puedes ver el vídeo aquí:

📺 [Ver demostración del laboratorio](Networking-Lab\Network-Monitor\Demo.mp4)

_(El vídeo se encuentra en el mismo repositorio)_

---

## 👤 Autor

Manuel Míguez Liméns

[GitHub](https://github.com/manuelmiguezlimens) | [LinkedIn](https://www.linkedin.com/in/manuelmiguezlimens/) | [Gmail](mailto:miguezlimensmanuel@gmail.com)
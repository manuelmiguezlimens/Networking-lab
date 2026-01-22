# 📡 Port Scanner Basic

Laboratorio práctico de **escaneo de puertos y detección de servicios expuestos** en entornos Linux, orientado al análisis de superficie de red y diagnóstico de infraestructura.

Este laboratorio simula tareas reales de **operaciones de red, seguridad básica y visibilidad de servicios**, propias de perfiles técnicos de redes y NOC.

---

## 🎯 Objetivos del laboratorio

- Identificar puertos TCP abiertos en hosts de red
- Detectar servicios potencialmente expuestos
- Analizar superficie de red
- Realizar diagnóstico básico de infraestructura
- Generar logs de escaneo
- Simular tareas reales de operación de red

---

## 📁 Estructura del laboratorio

```text
port-scanner-basic/
├── port-scanner.sh
├── port-scanner.log
├── Demo.mp4
└── README.md
```

---

## 🧠 Funcionalidades

- Escaneo TCP de múltiples hosts

- Lista configurable de puertos

- Detección de puertos abiertos

- Registro automático de resultados

- Análisis de exposición de servicios

- Diagnóstico de red básico

- Enfoque Blue Team

--- 

## 🔧 Script: ```port-scanner.sh```

El script realiza:

- Conexiones TCP directas a puertos definidos

- Identificación de puertos abiertos

- Generación de logs

- Escaneo automático

- Análisis de visibilidad de red

---

## ▶️ Uso

```
chmod +x port-scanner.sh
./port-scanner.sh
```

---

## 📄 Logs

Se genera el archivo: ```port-scanner.log```

Este log permite:

- Revisar resultados históricos

- Analizar exposición de servicios

- Detectar cambios en la superficie de red

- Documentar estado de infraestructura

---

## 🧪 Ejemplo de salida

```
2026-01-22 20:10:01 - 🟢 PUERTO ABIERTO: localhost:22
2026-01-22 20:10:01 - 🔴 Puerto cerrado: localhost:80
2026-01-22 20:10:02 - 🟢 PUERTO ABIERTO: 127.0.0.1:3306
```
---

## 🎥 Vídeo de demostración

En este repositorio se incluye un vídeo de demostración donde se muestra:

Ejecución del script

Generación de reportes

Interpretación básica de resultados

👉 Puedes ver el vídeo aquí:

📺 [Ver demostración del laboratorio](Networking-Lab\Port-Scanner-Basic\Demo.mp4)

_(El vídeo se encuentra en el mismo repositorio)_

---

## 👤 Autor

Manuel Míguez Liméns

[GitHub](https://github.com/manuelmiguezlimens) | [LinkedIn](https://www.linkedin.com/in/manuelmiguezlimens/) | [Gmail](mailto:miguezlimensmanuel@gmail.com)
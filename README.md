# Hexápodo Mark I - Plataforma Autónoma (VRI 2026)

Este repositorio contiene el stack de software para el robot hexápodo autónomo desarrollado para el proyecto VRI 2026.

## 🚀 Inicio Rápido con Docker

Este proyecto utiliza Docker para garantizar que todos los desarrolladores trabajen en el mismo entorno (ROS 2 Humble).

### Requisitos
- Docker y Docker Compose
- Ubuntu 22.04 (Recomendado)

### Instrucciones
1. **Construir la imagen:**
   ```bash
   docker compose build
   ```
2. **Levantar el contenedor:**
   ```bash
   docker compose up -d
   ```
3. **Entrar al contenedor:**
   ```bash
   docker exec -it hexapodo_dev bash
   ```

## 📂 Estructura del Repositorio
- `docker/`: Configuración del entorno de desarrollo.
- `src/`: Paquetes de ROS 2 (Description, Control, Teleop).
- `docs/`: Documentación técnica.
- `scripts/`: Herramientas de automatización.

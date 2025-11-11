#!/bin/bash
#
# reporte_sistema.sh
# Script de monitoreo para el Proyecto ISL135 (Grupo 7)
#

# --- Encabezado ---
echo "============================================="
echo "  Reporte del Sistema: $(hostname)"
echo "  Generado: $(date)"
echo "============================================="
echo ""

# --- Métricas Requeridas  ---

# 1. Fecha y hora actual (Ya incluido en el encabezado)

# 2. Nombre del host (Ya incluido en el encabezado)

# 3. Número de usuarios conectados
# 'who' lista usuarios, 'wc -l' cuenta las líneas
USUARIOS_CONECTADOS=$(who | wc -l)
echo "1. Usuarios Conectados   : $USUARIOS_CONECTADOS"

# 4. Espacio libre en el disco principal
# 'df -h /' muestra el disco raíz en formato legible (h)
# 'grep /' filtra la línea que nos interesa
# 'awk '{print $4}'' extrae la 4ta columna (Disponible)
ESPACIO_DISCO=$(df -h / | grep -E '^/dev/' | awk '{print $4}')
echo "2. Espacio Disco (Raíz)  : $ESPACIO_DISCO"

# 5. Memoria RAM disponible
# 'free -h' muestra la memoria en formato legible
# 'grep Mem:' filtra la línea de la Memoria RAM
# 'awk '{print $7}'' extrae la 7ma columna (Available)
MEMORIA_DISPONIBLE=$(free -h | grep 'Mem:' | awk '{print $7}')
echo "3. Memoria RAM Disponible : $MEMORIA_DISPONIBLE"

# 6. Número de contenedores Docker activos
# 'docker ps -q' lista solo los IDs (-q) de contenedores activos
# 'wc -l' cuenta las líneas (o sea, el número de IDs)
CONTENEDORES_ACTIVOS=$(docker ps -q | wc -l)
echo "4. Contenedores Activos  : $CONTENEDORES_ACTIVOS"

echo ""
echo "--- Fin del Reporte ---"

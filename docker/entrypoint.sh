#!/bin/bash
set -e

# Cargar el entorno de ROS 2 Humble
source "/opt/ros/humble/setup.bash"

# Si existe un workspace compilado localmente, cargarlo
if [ -f "/ros2_ws/install/setup.bash" ]; then
    source "/ros2_ws/install/setup.bash"
fi

exec "$@"

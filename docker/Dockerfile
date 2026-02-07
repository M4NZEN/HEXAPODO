# Usamos la imagen oficial de ROS 2 Humble Desktop como base
FROM osrf/ros:humble-desktop-full

# Evitar prompts interactivos durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependencias básicas de sistema y herramientas de desarrollo
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    git \
    vim \
    tmux \
    wget \
    curl \
    lsb-release \
    gnupg2 \
    && rm -rf /var/lib/apt/lists/*

# Instalar dependencias específicas de ROS 2 para el Hexápodo
RUN apt-get update && apt-get install -y \
    ros-humble-joint-state-publisher-gui \
    ros-humble-xacro \
    ros-humble-ros2-control \
    ros-humble-ros2-controllers \
    ros-humble-dynamixel-sdk \
    ros-humble-real-sense2-camera-ms \
    && rm -rf /var/lib/apt/lists/*

# Configurar el espacio de trabajo
WORKDIR /ros2_ws

# Configurar el entrypoint para que cargue el entorno de ROS 2 automáticamente
COPY ./docker/entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["bash"]

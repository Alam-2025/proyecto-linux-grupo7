Proyecto Final: Introducción al Software Libre (Grupo 7)

Proyecto para la asignatura ISL135. Este repositorio contiene la configuración de un servidor Linux automatizado con scripts de Bash y servicios desplegados mediante Docker.

Descripción (Fases 1-5)

Este proyecto implementa:

    Preparación del Servidor:

        Usuarios: adminsys (sudo), tecnico (grupo soporte), visitante (grupo web).

        Directorios: /proyecto/{datos,web,scripts,capturas}.

        Permisos: setgid en datos y web para herencia de grupo.

    Automatización y Monitoreo:

        Script reporte_sistema.sh que monitorea el sistema.

        Tarea cron que ejecuta el script cada 30 minutos y guarda el log en /var/log/proyecto/reporte_sistema.log.

    Control de Versiones:

        Repositorio Git local y remoto en GitHub.

    Docker:

        Instalación de Docker Engine.

        Verificación con hello-world.

    Servidor Web Containerizado:

        Despliegue de un contenedor Nginx sirviendo un index.html personalizado desde /proyecto/web.

Pasos de Instalación (Resumen)

    Clonar este repositorio.

    Ejecutar scripts de configuración (si aplica).

    Instalar Docker.

    Levantar servicios con Docker.

    Verificación (Simulación):

        (Guarda y sal de nano).

        Ejecuta cat /proyecto/README.md

        Resultado Esperado: Verás el texto Markdown que acabas de pegar

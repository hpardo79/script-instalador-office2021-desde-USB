# Script instalador de Office 2021 desde USB (usando PowerShell)

## Generar el archivo de configuracion
[Herramienta de personalización de Office](https://config.office.com/deploymentsettings)

Exportar (descarga) el archivo `configuration.xml`.

## Descarga los archivos de instalación
```
setup.exe /download configuration.xml
```

## Crear USB de instalación 
Copia los archivos descargados, incluidos los de este repositorio en la memoria o disco USB. 

# Instalando Office

## Ejecutar el Script CMD
Para iniciar la instalación solo se requiere ejecutar el Script `RunSetup.cmd` el mismo ejecutara los comandos de PowerShell contenidos en el `AddSource.ps1` que modifican a su vez el `configuration.xml`, todo esto es necesario ya que al momento de conectar la unidad USB la misma toma una Letra de Unidad que tenga disponible y esta puede variar entre los equipos dependiendo de los dispositivos ya conectados. La ruta especifica sera detectada y actualizada en el archivo de configuracion `xml` por los scripts.

Luego de esto inicia el setup que requiere se acepte su ejecución con privilegios de administrador. Proceso de instalación continuara sin mas hasta su terminación.

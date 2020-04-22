## Sección BasesDeDatos
Esta sección contiene archivos en formato csv, producidos a partir de los datos originales ublicados por la Secretaría de Salud [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos). Desde el 14 de marzo hasta el 12 de abril utilizaba el comunicado técnico diario y la tabla de casos confirmados. A partir del 12 de abril se comenzaron a publicar datos abiertos en formato csv mucho más detallados y decidí utilizarlos, manteniendo el uso del caomunicado técnico diario.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en la sección principal describe cómo lo hago. A continuación describo los archivos contenidos en esta sección.

- CONAPO_ProyeccionPoblacion_MitadAno.csv: Contiene las proyecciones de población total para cada entidad federativa, para mitad de 2020, dividida en grupos de 10 años de edad, elaboradas por el Consejo Nacional de Población. Produje la tabla a partir del archivo orignal que puede ser descargado en la [página de datos abiertos del gobierno federal](https://datos.gob.mx/busca/dataset/proyecciones-de-la-poblacion-de-mexico-y-de-las-entidades-federativas-2016-2050).

- CaracteristicasCasosConfirmados_COVID19Mexico_<fecha>.csv: Es la versión csv de la tabla de casos confirmados en formato pdf que publica la SS. Yo la actualizaba diariamente hasta el 12 de abril, cuando dejó de ser necesario debido a la aparición de los datos originales en formato abierto.

- FrecAcumYTasaIncid_PorEntidad_COVID19Mexico_<fecha>.csv: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por entidad federativa, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de la entidad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada entidad de las proyecciones hechas por el Consejo Nacional de Población, mismas que están explicadas en esta sección.
  
- FrecAcumYTasaIncid_PorGrupoEdad_COVID19Mexico_<fecha>.csv: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por grupos de 10 años de edad, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de ese grupo de edad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada grupo de edad de las proyecciones hechas por el Consejo Nacional de Población, mismas que están explicadas en esta sección.

- ReporteCasos_COVID19Mexico_Ampliado.csv: Contiene los casos nuevos, acumulados y el porcentaje de cambio respecto al día anterior, de los casos sospechosos, confirmados, negativos, fallecidos, recuperados y estudiados, de todos los días. Para calcular el porcentake de cambio resté los casos nuevos del día anterior a los nuevos del día que se está reportando, el resultado lo dividí entre los casos nuevos del día anterior, y el resultado lo multipliqué por 100.

Esta sección no contiene los archivos originales de la SS porque considero que pueden ser descargados sin complicaciones desde la página de la Secretaría de Salud.

Si deseas hacer cualquier comentario o quieres plantear una colaboración, por favor escríbeme a alancarrillop@gmail.com.

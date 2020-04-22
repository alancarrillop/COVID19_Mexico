## Sección BasesDeDatos
Esta sección contiene archivos en formato csv, producidos a partir de los datos originales ublicados por la Secretaría de Salud [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos). Desde el 14 de marzo hasta el 12 de abril utilizaba el comunicado técnico diario y la tabla de casos confirmados. A partir del 12 de abril se comenzaron a publicar datos abiertos en formato csv mucho más detallados y decidí utilizarlos, manteniendo el uso del comunicado técnico diario.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en la sección principal describe cómo lo hago. A continuación describo los archivos contenidos en esta sección.


- CalculosParaCurvaEpidemica_COVID19Mexico\<fecha\>: Es una tabla de la cantidad de personas confirmadas que iniciaron sus síntomas en diferentes fechas. Cada renglón es una fecha y tiene las columnas fecha y atnidad de personas.

- ConfirmadosAcumuladosYTasaIncidencia_PorEntidad_COVID19Mexico\<fecha\>: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por entidad federativa, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de la entidad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada entidad de las proyecciones hechas por el Consejo Nacional de Población.

- ConfirmadosAcumuladosYTasaIncidencia_PorGrupoEdad_COVID19Mexico\<fecha\>: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por grupos de 10 años de edad, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de ese grupo de edad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada grupo de edad de las proyecciones hechas por el Consejo Nacional de Población.

- FallecidosAcumuladosYTasaLetalidad_PorGrupoEdad_COVID19Mexico\<fecha\>: Contiene la frecuencia acumulada de los casos confirmados y fallecidos, y la tasa de letalidad, por grupos de 10 años de edad, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de letalidad dividí los casos fallecidos acumulados entre los casos confrimados acumulados de ese grupo de edad, y el resultado lo multipliqué por 100.

### Bases de datos históricas
- ConfirmadosAcumulados_PorEntidad_Historico_COVIDMexico: Contiene el número de casos confirmados acumulados por entidad federativa y por día.

- ConfirmadosAcumulados_PorEntidad_Historico_COVIDMexico: Contiene la tasa de incidencia por entidad federativa y por día. Expliqué anteriormente cómo calculé la tasa de incidencia.

- ReporteCasos_Ampliado_ COVID19Mexico: Contiene los casos nuevos, acumulados y el porcentaje de cambio respecto al día anterior, de los casos sospechosos, confirmados, negativos, fallecidos, recuperados y estudiados, de todos los días. Para calcular el porcentake de cambio resté los casos nuevos del día anterior a los nuevos del día que se está reportando, el resultado lo dividí entre los casos nuevos del día anterior, y el resultado lo multipliqué por 100.

### Otras bases
- CONAPO_ProyeccionPoblacion_MitadAno.csv: Contiene las proyecciones de población total para cada entidad federativa, para mitad de 2020, dividida en grupos de 10 años de edad, elaboradas por el Consejo Nacional de Población. Produje la tabla a partir del archivo orignal que puede ser descargado en la [página de datos abiertos del gobierno federal](https://datos.gob.mx/busca/dataset/proyecciones-de-la-poblacion-de-mexico-y-de-las-entidades-federativas-2016-2050).

Esta sección no contiene los archivos originales de la SS porque considero que pueden ser descargados sin complicaciones desde la página de la Secretaría de Salud. Si deseas hacer cualquier comentario o quieres plantear una colaboración, por favor escríbeme a alancarrillop@gmail.com.

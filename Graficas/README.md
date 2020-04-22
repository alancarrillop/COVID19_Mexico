## Sección Graficas
Esta sección contiene gráficas en formato png, producidas a partir de los datos originales ublicados por la Secretaría de Salud  [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos). Desde el 14 de marzo hasta el 12 de abril utilizaba el comunicado técnico diario y la tabla de casos confirmados. A partir del 12 de abril se comenzaron a publicar datos abiertos en formato csv mucho más detallados y decidí utilizarlos, manteniendo el uso del caomunicado técnico diario.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en la sección principal describe cómo lo hago. A continuación describo las gráficas contenidas en esta sección.

### Gráficas con corte a un día específico:
- Barplot_SexoConfirmados-Hospitalizados-Fallecidos_COVID19Mexico\<fecha\>: Es una gráfica de tre barras, una representa a todos los casos confirmados, otra a los confirmados hospitalizados y otroa a los confirmados fallecidos. Cada barra representa el porcentaje de mujere y hombres de ese conjunto de pacientes.

- Barplot_CurvaEpidemica_COVID19Mexico\<fecha\>: Es un histograma donde el eje "x" indica la fecha de incio de los síntomas y el "y" la cantidad de casos en cada fecha.

- Pieplot_DesenlaceConfirmados_COVID19Mexico\<fecha\>: Es una gráfica de pastel que muestra el porcentaje de casos confirmados activos, recuperados y fallecidos. La cifra de casos recuperados no está contenida en ningún documento oficial, pero desde el 12 de abril se menciona en publicaciones en la [página de Facebook de la Secretaría de Salud](https://www.facebook.com/SecretariadeSaludMX/).

- Barplot_ConfirmadosAcumuladosYTasaIncidencia_PorEntidad_COVID19Mexico\<fecha\>: Son dos gráficas de barras. Una contiene la frecuencia acumulada de casos confirmados por entidad federativa, y la otra la tasa de incidencia por entidad federativa. Anteriormente describí el procedimiento para calcular la tasa de incidencia. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de la entidad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada entidad de las proyecciones hechas por el Consejo Nacional de Población.

- Barplot_ConfirmadosAcumuladosYTasaIncidencia_PorGrupoEdad_COVID19Mexico\<fecha\>: Son dos gráficas de barras. Una contiene la frecuencia acumulada de casos confirmados por grupos de 10 años de edad, y la otra la tasa de incidencia por grupo de edad. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población del grupo de edad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada grupo de edad de las proyecciones hechas por el Consejo Nacional de Población.

- Barplot_FallecidosAcumuladosYTasaLetalidad_PorGrupoEdad_COVID19Mexico\<fecha\>: Son dos gráficas de barras. Una contiene la frecuencia acumulados de casos confirmados y fallecidos por grupos de 10 años de edad, y la otra la tasa de letalidad por grupo de edad. Para calcular la tasa de letalidad dividí los casos fallecidos acumulados entre los confirmados acumulados del grupo de edad, y el resultado lo multipliqué por 100.

- Barplot_FallecidosYCondicones_COVID19Mexico\<fecha\>: Es una serie de 12 gráficas que representan varias condiciones (embarazo, asma, neomunía, etc.). Cada una de las subgráficas contiene barras que representan los pacientes confirmados y fallecidos divididos en grupos de edad de 10 años. Cad barra representa el porcentaje de integrantes de ese grupo de edad que presentaron y que no presentaron la condición de esa subgráfica.

### Series de tiempo:
- Lineplot_ReportesNuevos_COVID19Mexico: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, recuperados y fallecidos nuevos.

- Lineplot_ReportesAcumulados_COVID19Mexico: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, recuperados y fallecidos acumulados.

- Lineplot_PorcentajeCambio_COVID19Mexico: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" el porcentaje de cambio respecto al día anterior para los casos confirmados, fallecidos y recuperados. Para calcular el porcentake de cambio resté los casos nuevos del día anterior a los nuevos del día que se está reportando, el resultado lo dividí entre los casos nuevos del día anterior, y el resultado lo multipliqué por 100.

- Lineplot_ConfirmadosNuevosYAcumulados_COVID19Mexico: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados nuevos y acumulados.

- Lineplot_Confirmados-Sospechosos-EstudiadosAcumulados_COVID19Mexico: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, sospechosos y estudiados acumulados. La línea que corresponde a los casos estudiados está cortada porque esa cifra no se reportaba anteriormente.

- Lineplot_ConfirmadosAcumulados_PorEntidad_Historico_COVID19Mexico: Es una serie de 6 subgráficas de lineas, cad una de las cuales contiene la información de entre 5 y 6 entidades federativas. En cada subgráfica el eje "x" representa los días transcurridos y el "y" el número de casos confirmados acumulados.

- Lineplot_TasaIncidencia_PorEntidad_Historico_COVID19Mexico: Es una serie de 6 subgráficas de lineas, cad una de las cuales contiene la información de entre 5 y 6 entidades federativas. En cada subgráfica el eje "x" representa los días transcurridos y el "y" el la tasa de incidencia. Anteriormente he explicado cómo calculo la tasa de incidencia para cada entidad federativa.

Los datos originales son liberados por la SS todos los días aproximadamente a las 19:00 hr, tiempo de la Ciudad de México. Por lo general actualizo este repostiorio en el transcurso de la noche. Sin embargo mis ocupaciones no siempre me permiten hacerlo con la rapidez que debería. Si deseas hacer cualquier comentario o quieres plantear una colaboración, por favor escríbeme a alancarrillop@gmail.com.

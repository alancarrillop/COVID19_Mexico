**Información importante: El 12 de abril la Secretaría de Salud comenzó a publicar datos abiertos, lo que significó para mí un cambio en el manejo de la información. Dedicaré unos días a adaptar los scripts y en cuanto lo logre volveré a actualizar el repositorio. Si tienes cualquier comentario por favor escríbeme a alancarrillop@gmail.com
Sección BasesDeDatos**

Esta sección contiene gráficas en formato png, producidas a partir de los datos originales ublicados por la Secretaría de Salud  [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos). Desde el 14 de marzo hasta el 12 de abril utilizaba el comunicado técnico diario y la tabla de casos confirmados. A partir del 12 de abril se comenzaron a publicar datos abiertos en formato csv mucho más detallados y decidí utilizarlos, manteniendo el uso del caomunicado técnico diario.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en la sección principal describe cómo lo hago. A continuación describo las gráficas contenidas en esta sección.

- Barplot_CurvaEpidemica_COVID19Mexico_Test.png: Es un histograma donde el eje "x" indica la fecha de incio de los síntomas y el "y" la cantidad de casos en cada fecha.

- Barplot_FrecuenciaAcumYTasaIncid_PorEntidad_COVID19Mexico_Test.png: Son dos gráficas de barras. Una contiene la frecuencia acumulada de casos confirmados por entidad federativa, y la otra la tasa de incidencia por entidad federativa. Anteriormente describí el procedimiento para calcular la tasa de incidencia.

- Barplot_FrecuenciaAcumYTasaIncid_PorGrupoEdad_COVID19Mexico_Test.png: Son dos gráficas de barras. Una contiene la frecuencia acumulada de casos confirmados por grupos de 10 años de edad, y la otra la tasa de incidencia por grupo de edad. Anteriormente describí el procedimiento para calcular la tasa de incidencia.

- Lineplot_Confirmados-Sospechosos-EstudiadosAcumulados_COVID19Mexico.png: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, sospechosos y estudiados acumulados. La línea que corresponde a los casos estudiados está cortada porque esa cifra no se reportaba anteriormente.

- Lineplot_ConfirmadosNuevosYAcumulados_COVID19Mexico_Test.png: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados nuevos y acumulados.

- Lineplot_PorcenCambio_COVID19Mexico_Test.png: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" el porcentaje de cambio respecto al día anterior para los casos confirmados, fallecidos y recuperados. Para calcular el porcentake de cambio resté los casos nuevos del día anterior a los nuevos del día que se está reportando, el resultado lo dividí entre los casos nuevos del día anterior, y el resultado lo multipliqué por 100.

- Lineplot_ReportesAcumulados_COVID19Mexico_Test.png: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, recuperados y fallecidos acumulados.

- Lineplot_ReportesNuevos_COVID19Mexico_Test.png: Es una gráfica de líneas donde el eje "x" indica los días desde el inicio de la epidemia en nuestro país hasta la fecha reportada, y el "y" la cantidad de casos confirmados, recuperados y fallecidos nuevos.

- Pieplot_DesenlaceCasosConfirmados_COVID19Mexico_\<fecha>.png: Es una gráfica de pastel que muestra el porcentaje de casos confirmados activos, recuperados y fallecidos. La cifra de casos recuperados no está contenida en ningún documento oficial, pero desde el 12 de abril se menciona en publicaciones en la [página de Facebook de la Secretaría de Salud](https://www.facebook.com/SecretariadeSaludMX/).

- Pieplot_SexoCasosConfirmados_COVID19Mexico_\<fecha>.png: Es una gráfica de pastel que muestra el porcentaje de hombres y muejeres de los casos confirmados.

Los datos originales son liberados por la SS todos los días aproximadamente a las 19:00 hr, tiempo de la Ciudad de México. Por lo general actualizo este repostiorio en el transcurso de la noche. Sin embargo mis ocupaciones no siempre me permiten hacerlo con la rapidez que debería.

Si deseas hacer cualquier comentario o quieres plantear una colaboración, por favor escríbeme a alancarrillop@gmail.com.

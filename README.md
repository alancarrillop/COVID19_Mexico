# COVID19_Mexico

## Información general
Este repositorio contiene bases de datos y gráficas con información del COVID19 en México. Comencé el proyecto el 17 de marzo pero hasta el 14 de abril escribí una descripción del repositorio.

Obtengo los datos de la página oficial de la Secretaría de Salud (SS) [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos), en la sección "Coronavirus (COVID-19)-Comunicado Técnico Diario", que comenzaron a publicarse el 14 de marzo. En esa sección se encuentra un mapa interactivo y tres documentos: comunicado técnico diario, tabla de casos sospechosos y tabla de casos positivos, todos en formato pdf. Hasta el 12 de abril eran los únicos datos nacionales que se podían encontrar, pero a partir del 13 de abril la misma institución, en su página oficial, en la sección "Datos Abiertos - Dirección General de Epidemiología", empezó a publicar además un archivo en formato csv que contiene mucha más información.

Otra parte pequeña de los datos la obtengo de tweets de la Secretaría de Salud o sus funcionarios [(@SSalud_mx)](https://twitter.com/SSalud_mx), publicaciones de su página de Facebook [(@SecretariadeSaludMX)](https://www.facebook.com/SecretariadeSaludMX/), conferencias de pensa [(Canal de YouTube del Gobierno de México)](https://www.youtube.com/playlist?list=PL-wEE8VmWaJ1XfDoFFkVfxuwVRgBMIiNO) o páginas de secretarías de salud estatales.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en esta sección describe cómo lo hago. El repositorio está formado por una sección de base de datos y otra de gráficas, cuya explicación encontrarás haciendo click en su sección.

Los datos originales son liberados por la SS todos los días aproximadamente a las 19:00 hr, tiempo de la Ciudad de México. Por lo general actualizo este repostiorio en el transcurso de la noche. Sin embargo mis ocupaciones no siempre me permiten hacerlo con la rapidez que debería.

Existen muchas otras inciativas individuales y colaborativas para analizar los datos de la Secretaría de Salud de México respecto a COVID-19 en nuestro país, como el de [Gabriel Carrnco](https://github.com/carranco-sga), y otras más con excelentes visualizaciones, como [Covidatos](https://covidatos.mx/), [Covid-19: MxTracker](https://joelricci.shinyapps.io/covid_mx_jrl/), [Covid-19 México](https://mexicovid19.github.io/Mexico/), [Baruch](https://commuter.carto.com/builder/b9062a27-5a6b-4dcd-81fa-e7645d3cd504/embed?state=%7B%22map%22%3A%7B%22ne%22%3A%5B13.859413869074032%2C-119.72900390625001%5D%2C%22sw%22%3A%5B33.22949814144951%2C-79.12353515625001%5D%2C%22center%22%3A%5B23.905926927314724%2C-99.42626953125001%5D%2C%22zoom%22%3A6%7D%7D) etcétera.

Si deseas hacer cualquier comentario o quieres plantear una colaboración, por favor escríbeme a alancarrillop@gmail.com.

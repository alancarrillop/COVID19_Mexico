# COVID19_Mexico

## Información general
Este repositorio contiene bases de datos y gráficas con información del COVID19 en México. Comencé el proyecto el 17 de marzo pero hasta el 14 de abril escribí una descripción del repositorio.

Obtengo los datos de la página oficial de la Secretaría de Salud (SS) [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos), en la sección "Coronavirus (COVID-19)-Comunicado Técnico Diario", que comenzaron a publicarse el 14 de marzo. En esa sección se encuentra un mapa interactivo y tres documentos: comunicado técnico diario, tabla de casos sospechosos y tabla de casos positivos, todos en formato pdf. Hasta el 12 de abril eran los únicos datos nacionales que se podían encontrar, pero a partir del 13 de abril la misma institución, en su página oficial, en la sección "Datos Abiertos - Dirección General de Epidemiología", empezó a publicar además un archivo en formato csv que contiene mucha más información.

Otra parte pequeña de los datos la obtengo de tweets de la Secretaría de Salud o sus funcionarios [(@SSalud_mx)](https://twitter.com/SSalud_mx), publicaciones de su página de Facebook [(@SecretariadeSaludMX)](https://www.facebook.com/SecretariadeSaludMX/), conferencias de pensa [(Canal de YouTube del Gobierno de México)](https://www.youtube.com/playlist?list=PL-wEE8VmWaJ1XfDoFFkVfxuwVRgBMIiNO) o páginas de secretarías de salud estatales.

Este repositorio está formado por una sección de base de datos y otra de gráficas.

### Sección BasesDeDatos
Contiene los siguientes archivos:

- CONAPO_ProyeccionPoblacion_MitadAno.csv: Contiene las proyecciones de población totoal para cada entidad federativa, para mitad de 2020, dividida en grupos etáreos de 10 años, elaboradas por el Consejo Nacional de Población. Produje la tabla a partir del archivo orignal que puede ser descargado en la [(página de datos abiertos del gobierno federal)](https://datos.gob.mx/busca/dataset/proyecciones-de-la-poblacion-de-mexico-y-de-las-entidades-federativas-2016-2050).

- CaracteristicasCasosConfirmados_COVID19Mexico_12-abr-20.csv: Es la versión csv de la tabla de casos confirmados en formato pdf que publica la SS. Yo la actualizaba diariamente hasta el 12 de abril, cuando dejó de ser necesario debido a la aparición de los datos originales en formato abierto.

- FrecAcumYTasaIncid_PorEntidad_COVID19Mexico_<fecha>.csv: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por entidad federativa, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de la entidad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada entidad de las proyecciones hechas por el Consejo Nacional de Población, mismas que están explicadas en esta sección.
  
- FrecAcumYTasaIncid_PorGrupoEdad_COVID19Mexico_12-abr-20.csv: Contiene la frecuencia acumulada de los casos confirmados y tasa de incidencia por 100 mil habitantes, por grupos de 10 años de edad, calculada hasta la fecha que señala el nombre del archivo. Para calcular la tasa de incidencia dividí la frecuencia acumulada entre la población de ese grupo de edad, y el resultado lo multipliqué por 100 mil. Obtuve la población de cada grupo de edad de las proyecciones hechas por el Consejo Nacional de Población, mismas que están explicadas en esta sección.

- ReporteCasos_COVID19Mexico_Ampliado.csv: Contiene los casos nuevos, acumulados y el porcentaje de cambio respecto al día anterior, de los casos sospechosos, confirmados, negativos, fallecidos, recuperados y estudiados, de todos los días.

Esta sección no contiene los archivos originales de la SS porque considero que puede ser descargado sin complicaciones desde la página de la página oficial.


La información es liberada por la SS todos los días aproximadamente a las 19:00 hr tiempo de la Ciudad de México. Por lo general actualizo este repostiorio en el transcurso de la noche.


https://github.com/carranco-sga


Las bases de datos son de elaboración propia a partir de la información publicada por la Secretaría de Salud de México [(click para ver la página)](https://www.gob.mx/salud/es/archivo/documentos). Esta información se publica en formato pdf, para analizarla más fácilmente es que la transformamos a formato csv.

La Secretaría de Salud ha publicado información global desde hace algunas semanas, pero comenzó a reportar datos nacionales útiles el 25 de febrero de 2020 aproximadamente. La Secretaría hace un corte de información diariamente aproximadamente a las 13:00 hr, y publica la información aproximadamente a las 19:00. Por lo tanto se pretende que todos los recursos existentes en este repositorio se actualicen diariamente aproximadamente a las 21:00 hr.

Si tienes cualquier duda o comentario respecto a cualquier tema tratado en este repositorio por favor envía un correo a alancarrillop@gmail.com

# Metodología

## Obtención y manejo de los datos
### Del 14 de marzo al 12 de abril
Durante estos días mi fuente de los datos era el comunicado técnico diario y la tabla de casos positivos, publicados por la Secretaría de Salud.

El comunicado técnico diario es un documento en formato pdf que contiene información sobre el desarrollo de la epidemia en todo el mundo y nuetro país. Incluye un mapa de México donde con diferentes colores ilustra la cantidad de casos acumulados de cada entidad federativa. Y muestra en recuadros de colores la cifra acumulada de casos sospechosos, positivos, negativos, fallecidos y total de estudiados.

La tabla de casos confirmados es un documento en formato pdf donde cada renglón es un paciente y contiene las siguientes columnas: número de caso, estado, sexo, edad, fecha de inicio de síntomas, identificación por RT-PCR (es decir, resultado de la prueba de PCR), país de procedencia y fecha de llegada a México. Se rellenan con azul cielo los renglones de los pacientes nuevos del día reportado.

Utilizando RStudio y el paquete pdftools (Jeroen Ooms, 2019) importaba el documento pdf a mi espacio de trabajo. Convertía cada línea del documento en un vector de caracteres. Posteriormente utilizaba expresiones regulares para extraer los datos de interés y finalmente lo concatenaba todo en un data frame. Al data frame le agregaba una columna con el rango de edad de cada paciente de 10 en 10 años. Lo exportaba en formato csv y lo subía a este repositorio con el nombre CaracteristicasCasosConfirmados_COVID19Mexico_Detalles_\<fecha\>.

El proceso no era del todo automático, pues casi todos los días el formato del documento pdf publicado variaba ligeramente, lo que hacía que todo el script no funionara y hubiera que supervisar su ejecuución. A esto hay que agregarle que comenzaron a aparecer inconsistencias que fueron tmabién observadas por otras personas como [@elzr](https://twitter.com/elzr), [@CovidConfirmado](https://twitter.com/CovidConfirmado), [@rafaelprietoc](https://twitter.com/rafaelprietoc), entre muchas otras; aquí algunas de esas inconsistencias:

- El 6 de abril la SS dejó de resaltar con azul cielo los casos nuevos y eliminó la coluna de fecha de llegada a México.
- El 8 de abril se eliminó la columna de país deprocedencia.
- Entre esos días hubo discrepancias entre las fechas de inicio de síntomas, que en ocasiones aparecían como una serie de dígitos en lugar de una fecha; y entre los países de origen, pues éstos cmabiaban de nombre varias veces.

Del comunicado técnico diario los datos que utilizaba eran las cifras de casos acumulados sospechosos, positivos, negativos, fallecidos y estudiados. Cada día ingresaba estos datos a un nuevo renglón de un documento csv.

De la tabla de casos positivos

A partir del 13 de abril la Secretaría comenzó a publicar en su página de internet un documento en formato csv que contiene todos los casos estudiados desde el inicio de la epidemia en nuestro país. Cada renglón es un paciente y contiene las sigueintes columnas con las siguientes codificaciones:



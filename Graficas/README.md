**Información importante: El 12 de abril la Secretaría de Salud comenzó a publicar datos abiertos, lo que significó para mí un cambio en el manejo de la información. Dedicaré unos días a adaptar los scripts y en cuanto lo logre volveré a actualizar el repositorio. Si tienes cualquier comentario por favor escríbeme a alancarrillop@gmail.com
Sección BasesDeDatos**

Esta sección contiene gráficas en formato png, producidos a partir de los datos originales ublicados por la Secretaría de Salud (click para ver la página). Desde el 14 de marzo hasta el 12 de abril utilizaba el comunicado técnico diario y la tabla de casos confirmados. A partir del 12 de abril se comenzaron a publicar datos abiertos en formato csv mucho más detallados y decidí utilizarlos, manteniendo el uso del caomunicado técnico diario.

Todas las manipulaciones de datos y elaboración de gráficas las realizo con R y RStudio. El archivo de Metolodogia incluido en la sección principal describe cómo lo hago. A continuación describo los archivos contenidos en esta sección.



# Gráficas

Aquí encontrarás gráficas creadas a partir de los documentos en formato csv que están en este mismo repositorio. La Secretaría de Salud hace corte de la información diariamente aproximadamente a las 13:00 hr, y la hace pública en el transcurso de la noche. Se pretende que las gráficas contenidas en este repositorio se actualicen también en el transcurso de la noche.

La información publicada por la Secretaría de Salud es en ocasiones ambigua. Por ejemplo, en el reporte de casos positivos los casos nuevos están rellenados con azul cielo. Esta cifra debería coincidir con el resultado de restar los casos reportados en el día actual y los del día anterior, del comunicado técnico diario; pero no siempre sucede.

Siempre que sea posible llenaremos los datos faltantes con los que nosotros hayamos podido investigar y corroborar. Pero cuando no estemos 100% seguros de su veracidad procederemos a hacer el análisis con los datos faltantes. Esto podría generar una discrepancia en lo publicado entre un día y otro en este repositorio, o entre este repositorio y otros.

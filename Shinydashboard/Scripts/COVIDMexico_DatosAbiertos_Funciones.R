COVIDMexico_DatosAbiertos_Funciones<-function()
  {
  
  # Mapear un valor dado con el contenido de un data frame de dos columnas, para saber a qué grupo corresponde el valor:
  MatchCategory_FromDF<-function(Key,DF)
    {Match<-which(as.vector(unlist(DF[1]))==Key)
    return(DF[Match,2])}
  
  # Mapear un valor dado con el contenido de una lista que contiene un vector de valores y una lista de vectores,
  # para ver a qué grupo pertenece el valor:
  MatchCategory_FromListOfVectors<-function(Key,VectorOfKeys,ListOfVectors)
    {for (i in 1:length(ListOfVectors))
      {if(Key %in% ListOfVectors[[i]])
        {Result<-VectorOfKeys[i]
        return(Result)}}}
  
  # A partir de los datos que contienen los casos acumulados de sospechosos, confirmados, fallecidos, recuperados y estudiados,
  # calcular los casos nuevos y el porcentaje de cambio respecto al día anterior:
  Nuevos_Porcentaje<-function(TipoCaso)
    {PorcentajeCambio<-c()
    Nuevos<-c()
    for (i in 1:nrow(Datos))
      {Actual<-Datos[i,paste0(TipoCaso,"Acum")]
      Previo<-Datos[i-1,paste0(TipoCaso,"Acum")]
      Diferencia<-Actual-Previo
      Nuevos[i]<-Diferencia
      Porcentaje<-round(((Diferencia)/Previo)*100,2)
      PorcentajeCambio[i]<-Porcentaje}
      PorcentajeCambio[which(PorcentajeCambio==Inf| is.na(PorcentajeCambio) | is.nan(PorcentajeCambio))]<-0
      Nuevos[which(is.na(Nuevos))]<-0
      DataFrame<-data.frame("Nuevos"=Nuevos,"PorcenCambio"=PorcentajeCambio)
      colnames(DataFrame)<-c(paste0(TipoCaso,"Nuevos"),paste0(TipoCaso,"PorcenCambio"))
      DataFrame}
  
  # Calcular frecuencias acumuladas y tasas. Por ejemplo, frecuencia acumulada de confirmados y tasa de incidencia, o recuencia acumulada de fallecidos y tasa de letalidad,
  # por grupo, por ejemplo por entidad federativa o grupo de edad:
  FrecuenciaAcum_Porcentaje_Tasa<-function(ConjuntoDePacientes,Columna,Etiquetas,Factor,DenominadorReferenciaPorGrupo,NumeradorReferenciaNacional,DenominadorReferenciaNacional)
    {# Calcular la frecuencia de cada grupo y colocarlo en un data frame:
    Frecuencias<-rep(0,length(Etiquetas))
    for(i in 1:nrow(ConjuntoDePacientes))
    {Temp<-which(Etiquetas==ConjuntoDePacientes[i,Columna])
    Frecuencias[Temp]<-Frecuencias[Temp]+1}
    
    Porcentajes<-round((Frecuencias/nrow(ConjuntoDePacientes))*100,2)
    
    # Hacer cálculos de frecuencias acumuladas y tasa de incidencia, por grupo y nacional:
    AcumPorGrupo<-data.frame(Grupo=Etiquetas,FrecuenciaAcum=Frecuencias,Porcentaje=Porcentajes)
    ReferenciaYTasaPorGrupo<-data.frame(Grupo=Etiquetas,Referencia=DenominadorReferenciaPorGrupo)
    ReferenciaYTasaPorGrupo$Tasa<-round((AcumPorGrupo$FrecuenciaAcum/ReferenciaYTasaPorGrupo$Referencia)*Factor,2)
    
    # Hacer el data frame con los resultados, colocarlos en una lista e imprimirlos:
    Merged<-merge(AcumPorGrupo,ReferenciaYTasaPorGrupo,by = "Grupo")
    Merged$Grupo<-as.character(Merged$Grupo)
    
    TasaReferenciaNacional<-round((NumeradorReferenciaNacional/DenominadorReferenciaNacional)*Factor,2)
    Totales<-data.frame(Grupo="Nacional",FrecuenciaAcum=NumeradorReferenciaNacional,Porcentaje=sum(Porcentajes),Referencia=DenominadorReferenciaNacional,Tasa=TasaReferenciaNacional)
    
    Resultados<-list(PorGrupo=Merged,Totales=Totales)
    Resultados}
  
  # Función para colorear el fondo de los lineplots:
  PlotBackgroundColor <- function(Color)
    {points(0, 0, pch=16, cex=1e6, col=Color)
      #grid(col="white", lty=1)}
    }
  
  Funciones<-list(MatchCategory_FromDF=MatchCategory_FromDF,MatchCategory_FromListOfVectors=MatchCategory_FromListOfVectors,
                  Nuevos_Porcentaje=Nuevos_Porcentaje,FrecuenciaAcum_Porcentaje_Tasa=FrecuenciaAcum_Porcentaje_Tasa,PlotBackgroundColor=PlotBackgroundColor)}


Class {
	#name : #Directorio,
	#superclass : #Estructura,
	#instVars : [
		'contenido'
	],
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #operations }
Directorio >> agregar: unObjeto [
	contenido add: unObjeto
]

{ #category : #operations }
Directorio >> archivoMasGrande [
	"Retorna el archivo con mayor cantidad de bytes en cualquier nivel del filesystem contenido por directorio receptor."

	^ contenido detectMax: [ :ar | ar tamaño ]
]

{ #category : #operations }
Directorio >> archivoMasNuevo [
	"Retorna el archivo con fecha de creacion mas reciente en cualquier nivel del filesystem contenido por directorio receptor"
	^ contenido detectMax: [ :ar | ar fechaCreacion ]

	
]

{ #category : #operations }
Directorio >> eliminar: unObjeto [
	contenido remove: unObjeto
]

{ #category : #initialization }
Directorio >> initialize [
	super initialize.
]

{ #category : #operations }
Directorio >> listadoDeContenido [
"Retorna un String con el listado del contenido del directorio imprimiendo el path completo de cada elemento (Similar al comando pwd de linux) siguiendo el modelo
presentado a continuacion:
/DirectorioA
/DirectorioA/Directorio A.1
/DirectorioA/Directorio A.1/Directorio A.1.1 (3 archivos)
/DirectorioA/Directorio A.1/Directorio A.1.2 (2 archivos)
/DirectorioA/Directorio A.2
/Directorio B"
	
]

{ #category : #operations }
Directorio >> llamado: unString creadoEl: unaFecha [
	super llamado: unString creadoEl: unaFecha
]

{ #category : #accessing }
Directorio >> tamaño [
^ 32 
]

{ #category : #operations }
Directorio >> tamañoTotalOcupado [
	"Retorna el espacio total ocupado en KB, incluyendo su contenido"
	

	
]

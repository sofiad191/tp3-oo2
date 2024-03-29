Class {
	#name : #Archivo,
	#superclass : #Estructura,
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #operations }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new
		initializeConNombre: unString conFechaCreacion: unaFecha  yTamaño: unNumero;
		yourself
]

{ #category : #operations }
Archivo >> archivoMasGrande [ 

^self
]

{ #category : #operations }
Archivo >> archivoMasNuevo [
^self  
]

{ #category : #operations }
Archivo >> esDirectorio [
	^ false
]

{ #category : #operations }
Archivo >> imprimirPath: path En: stream [
	^''
]

{ #category : #initialization }
Archivo >> initialize [ 	
super initialize

]

{ #category : #initialization }
Archivo >> initializeConNombre: unString conFechaCreacion: unaFecha yTamaño: unNumero [
	nombre := unString.
	fechaCreacion := unaFecha.
	tamaño := unNumero
]

{ #category : #accessing }
Archivo >> tamaño [
	^tamaño
]

{ #category : #operations }
Archivo >> tamañoTotalOcupado [
	^tamaño
]

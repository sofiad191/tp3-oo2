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

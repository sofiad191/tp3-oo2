Class {
	#name : #Estructura,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion'
	],
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #accessing }
Estructura >> fechaCreacion [
 ^fechaCreacion
]

{ #category : #accessing }
Estructura >> fechaCreacion: unaFecha [
fechaCreacion:= unaFecha
]

{ #category : #initialization }
Estructura >> initialize [ 	
	fechaCreacion := DateAndTime now.
]

{ #category : #initialization }
Estructura >> initializeConNombre: unNombre yFechaCreacion: unaFecha [
	nombre := unNombre.
	fechaCreacion := unaFecha.
]

{ #category : #operations }
Estructura >> llamado: unString creadoEl: unaFecha [
	self initializeConNombre: unString yFechaCreacion: unaFecha 
]

{ #category : #accessing }
Estructura >> nombre [
 ^nombre
]

{ #category : #accessing }
Estructura >> nombre: unNombre [
nombre := unNombre
]

Class {
	#name : #Estructura,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaCreacion',
		'tamaño'
	],
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #operations }
Estructura class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	^ self new
		initializeConNombre: unString
			conFechaCreacion: unaFecha
			yTamaño: unNumero;
		yourself
]

{ #category : #operations }
Estructura >> esDirectorio [
	^ tamaño = 32
]

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
Estructura >> initializeConNombre: unNombre conFechaCreacion: unaFecha yTamaño: unNumero [
	nombre := unNombre.
	fechaCreacion := unaFecha.
	tamaño := unNumero
]

{ #category : #accessing }
Estructura >> nombre [
 ^nombre
]

{ #category : #accessing }
Estructura >> nombre: unNombre [
nombre := unNombre
]

{ #category : #accessing }
Estructura >> tamaño [
^tamaño
]

{ #category : #accessing }
Estructura >> tamaño: unTamaño [
tamaño := unTamaño
]

Class {
	#name : #Archivo,
	#superclass : #Estructura,
	#instVars : [
		'tamaño'
	],
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #initialization }
Archivo >> initialize [ 	
super initialize

]

{ #category : #operations }
Archivo >> llamado: unString creadoEl: unaFecha kBytes: unNumero [
	self llamado: unString creadoEl: unaFecha.
	self tamaño: unNumero
]

{ #category : #accessing }
Archivo >> tamaño [
^tamaño
]

{ #category : #accessing }
Archivo >> tamaño: unTamaño [
tamaño := unTamaño
]

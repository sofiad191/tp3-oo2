Class {
	#name : #Directorio,
	#superclass : #Estructura,
	#instVars : [
		'contenido'
	],
	#category : #'TP3-Ejercicio4-Model'
}

{ #category : #operations }
Directorio class >> llamado: unString creadoEl: unaFecha [
	^ self new
		initializeConNombre: unString yFechaCreacion: unaFecha ;
		yourself
]

{ #category : #operations }
Directorio >> agregar: unObjeto [
	contenido add: unObjeto
]

{ #category : #operations }
Directorio >> archivoMasGrande [
	"Retorna el archivo con mayor cantidad de bytes en cualquier nivel del filesystem contenido por directorio receptor."

	^ contenido
		detectMax: [ :d | 
			d esDirectorio
				ifTrue: [ d archivoMasGrande ]
				ifFalse: [ d tamaño ] ]
]

{ #category : #operations }
Directorio >> archivoMasNuevo [
	"Retorna el archivo con fecha de creacion mas reciente en cualquier nivel del filesystem contenido por directorio receptor"

	"^ contenido
		detectMin: [ :d | 
			d esDirectorio
				ifTrue: [ d contenido detectMin: [ :ar | ar archivoMasNuevo ] ]
				ifFalse: [ :a | a fechaCreacion ] ]"

	^ contenido
		detectMax: [ :d | 
			d esDirectorio
				ifTrue: [ d archivoMasNuevo ]
				ifFalse: [ d fechaCreacion ] ]
]

{ #category : #operations }
Directorio >> archivos [
^ contenido reject: [ :arch | arch esDirectorio  ]

]

{ #category : #accessing }
Directorio >> contenido [
^contenido
]

{ #category : #operations }
Directorio >> directorio [
^ contenido select: [ :file | file esDirectorio  ]

]

{ #category : #operations }
Directorio >> eliminar: unObjeto [
	contenido remove: unObjeto
]

{ #category : #operations }
Directorio >> esDirectorio [
	^ true
]

{ #category : #operations }
Directorio >> imprimirPathEn: unString con: unNumero [
	| arc tmp |
	arc := OrderedCollection new.
	self esDirectorio
		ifTrue: [ tmp := unString , '/' , self nombre.
			arc := self contenido reject: [ :a | a esDirectorio ].
			self imprimirPathEn: tmp con: arc size ].
	^ unString , ' (' , unNumero , ' archivos)'
	
]

{ #category : #initialization }
Directorio >> initialize [ 
contenido :=OrderedCollection new.
]

{ #category : #initialization }
Directorio >> initializeConNombre: unString yFechaCreacion: unaFecha [
	nombre := unString.
	fechaCreacion := unaFecha.
	tamaño := 32.
	
]

{ #category : #operations }
Directorio >> listadoDeContenido [
	| listado |
	listado := ''.
	^ self imprimirPathEn: listado con: 0 
	
]

{ #category : #accessing }
Directorio >> tamaño [
	^32
]

{ #category : #operations }
Directorio >> tamañoTotalOcupado [
	"Retorna el espacio total ocupado en KB, incluyendo su contenido"

	"^ contenido
		sumNumbers: [ :v | 
			[ v esDirectorio
				ifTrue: [ v contenido sumNumbers: [ :ar | ar tamañoTotalOcupado ] ]
				ifFalse: [ self tamaño ] ] ]"

	^( contenido sumNumbers: [ :elem | elem tamañoTotalOcupado ]) + tamaño
]

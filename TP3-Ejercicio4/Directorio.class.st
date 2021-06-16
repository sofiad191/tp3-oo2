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

	^ (contenido collect: [ :arch | arch archivoMasGrande ])
		detectMax: [ :arch | arch ifNotNil: [ arch tamañoTotalOcupado ] ]
]

{ #category : #operations }
Directorio >> archivoMasNuevo [
	"Retorna el archivo con fecha de creacion mas reciente en cualquier nivel del filesystem contenido por directorio receptor"

	^ (contenido collect: [ :arch | arch archivoMasNuevo ])
		detectMax: [ :arch | arch ifNotNil: [ arch fechaCreacion  ] ]
]

{ #category : #operations }
Directorio >> archivos [
^ contenido reject: [ :arch | arch esDirectorio  ]

]

{ #category : #accessing }
Directorio >> contenido [
^contenido
]

{ #category : #'as yet unclassified' }
Directorio >> cuantosArchivos [
	contenido isEmpty
		ifTrue: [ ^ '' ];
		ifFalse:
				[ ^ ' (' , (self archivos size) asString , ' archivos)' ]
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
Directorio >> imprimirPath: path En: stream [
	| newPath |
	newPath := path , '/' , nombre.
	stream << (newPath , self cuantosArchivos) asString.
	stream cr.
	contenido do: [ :each | each imprimirPath: newPath En: stream ].
	^ stream
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
	| path stream |
	path := ''.
	stream := WriteStream on: String new.
	stream := self imprimirPath: path En: stream.
	^ stream contents truncateTo: stream contents size - 1
]

{ #category : #accessing }
Directorio >> tamaño [
	^32
]

{ #category : #operations }
Directorio >> tamañoTotalOcupado [
	"Retorna el espacio total ocupado en KB, incluyendo su contenido"

	^ (contenido sumNumbers: [ :elem | elem tamañoTotalOcupado ])
		+ tamaño
]

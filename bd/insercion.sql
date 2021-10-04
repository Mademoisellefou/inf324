

update nota set notafinal = nota1+nota2+nota3 where notafinal IS NULL;

-- SETEO NOTA FINAL

update nota set notafinal = nota1+nota2+nota3 where CI =1 and sigla LIKE 'INF111';


INSERT  INTO nota( CI,sigla,nota1,nota2,nota3)
VALUES
(1	,'INF161'	,	12 ,	30,	22)
,(1	,'INF111'	,	10	 ,24,	22)
,(1	,'MAT123'	,	23 ,	12	 ,23)
,(1	,'INF131'	,	20	 ,10 ,	11)
,(2	,'INF161'	,	21 ,	24	 ,23)
,(2	,'INF111'	,	23 ,	21	 ,33)
,(2	,'INF151'	,	12 ,	30,	2)
,(3	,'INF111'	,	22 ,	30	 , 16)
,(3	,'INF131'	,	30	 ,30 ,	33)
-- INSERTAR NOTA
INSERT  INTO nota( CI,sigla,nota1,nota2,nota3)
VALUES
(50	,'INF141',21,	22,	22)
,(60	,'INF141',20,	16,	29)
,(66	,'INF141',22,	23,	10)
,(70	,'INF141',4	,   22,	25)
,(70	,'INF141',21,	10,	25)
,(73	,'INF141',14,	11,	29)
,(75	,'INF141',15,	28,	29)
,(100,'INF141',15,	11,	28)

-- INSERTAR PERSONA
INSERT INTO persona (CI,nombre,fechaNac,departamento)
VALUES
(50	 ,'Cinthya	Camacho',		'1994-02-24'	,1)
,(52	 ,'Claudia	Jimenez',		'1994-06-20'	,2)
,(58	 ,'Gabriel	Alvarez',		'1994-08-17'	,3)
,(59	 ,'Genesis	Villa',		    '1994-12-29'	,4)
,(60	 ,'Isabel	Apaza',		    '1994-10-13'	,5)
,(61	 ,'Ramiro	Perez',		    '1990-01-01'	,6)
,(62	 ,'Rene	Morales',  '1991-02-02'	,1)
,(66	 ,'Carlos	Nina',		 '1998-09-06'	,1)
,(67	 ,'Jorge	Santiesteban','1997-02-07',2)
,(68	 ,'Rodrigo	Humerez		','1993-01-08',2)
,(69	 ,'Sergio	Baltazar	','1991-06-09',2)
,(70	 ,'Jose	Ramirez		    ','1994-09-10',3)
,(71	 ,'Ivan	Galarza		    ','1992-03-11',3)
,(78	 ,'Betty	Zeballos	','1991-12-19',3)
,(79	 ,'Patricia	Pareja		','1992-08-23',1)
,(80	 ,'Olga	Fernandes		','1996-01-17',5)
,(89	 ,'Pablo Javier	Becerra	'	,'1994-01-17',4)
,(90	 ,'Juan Pablo	Calderon'	,'1996-01-17',4)
,(91	 ,'Jhonny Yessi	Canquilla'	,'1991-01-17',4)
,(96	 ,'Andy Ramiro	Chipana	'	,'1999-01-17',4)
,(98	 ,'Cristhian	Conde'	,'1999-01-17',1)
,(100 ,'	Hazael Devora	Copa'	,'1999-01-17',1)



INSERT INTO docente(iddoc,password,nombreC)
VALUES
(1028, '12ab', 'Flores Fernandes Brian'),
(1029, '12bc', 'Ten	Pom	Jorge'),
(1030, '12cd', 'Contreras	Candia	Juan'),
(1031, '12de', 'Vargas	Vargas Roberto'),
(1032, '12ef', 'Alcon	Lopez	Ruben'),
(1033, '12gh', 'Nogales	Quispe	Hernan'),
(1034, '123456789', 'Estevez Patinson Lidia');



-- INSERTAR MATERIA

INSERT INTO materia (sigla,descripcion,iddoc)
VALUES
 ('INF111',	'INTRODUCCION A LA INFORMATICA',1011)
,('LAB111',	'LABORATORIO DE INF-111',1006)
,('INF112',	'ORGANIZACION DE COMPUTADORAS',1038)
,('INF113',	'LABORATORIO DE COMPUTACION',1006)
,('MAT114',	'MATEMATICA DISCRETA I',1003)
,('MAT115',	'ANALISIS MATEMATICO I',1010)
,('LIN116',	'GRAMATICA ESPANOLA',1036)
,('INF121',	'ALGORITMOS Y PROGRAMACION',1014)
,('LIN116'	,'GRAMATICA ESPANOLA'  ,1036)
,('INF121'	,'ALGORITMOS Y PROGRAMACION'  	,1014)
,('LAB121'	,'LABORATORIO DE INF-121'  	,1001)
,('FIS122'	,'FISICA I' 	,1036)
,('LAB122'	,'LABORATORIO DE FISICA I'   ,1014)
,('MAT123'	,'MATEMATICA DISCRETA II ' 	,1019)
,('MAT124'	,'ALGEBRA LINEAL' 	,1008)
,('MAT125'	,'ANALISIS MATEMATICO II'  	,1018)
,('INF131'	,'ESTRUCTURA DE DATOS Y ALGORITMOS'		,1010)
,('LAB131'	,'LABORATORIO DE INF-131'  ,1014)
,('FIS132'	,'FISICA II'  	,1018)
,('LAB132'	,'LABORATORIO DE FISICA II' 	,1008)
,('EST133'	,'ESTADISTICA I'  	,1035)
,('MAT134'	,'ANALISIS MATEMATICO III'   ,1011)
,('LIN135'	,'IDIOMA I'  	,1035)
,('INF141'	,'SISTEMAS DE GESTION'   ,1008)
,('INF142'	,'FUNDAMENTOS DIGITALES'  	,1019)
,('INF143'	,'TALLER DE PROGRAMACION'  	,1015)



create table alumnos(
	Alum_ID int identity(1,1) not null primary key,
	Alum_nombre varchar(255) not null,
	Alum_apellido varchar(255) not null,
	Alum_edad int not null,
	Alum_ciud_ID int not null
)

create table ciudad(
	Ciud_ID int identity(1,1) not null primary key,
	Ciud_nombre varchar(255) not null,
	Ciud_CP varchar(255) not null,
	Ciud_prov_ID int not null
)

create table provincia(
	Prov_ID int identity(1,1) not null primary key,
	Prov_nombre varchar(255) not null,
	Prov_pais_ID int not null
)

create table pais(
	Pais_ID int identity(1,1) not null primary key,
	Pais_nombre varchar(255) not null
)
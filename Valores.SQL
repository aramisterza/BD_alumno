insert into pais(Pais_Nombre) values('Argentina'), ('Uruguay'), ('Paraguay'), ('España')
insert into provincia(Prov_Nombre, Prov_pais_ID) values('Entre Ríos',1)
insert into provincia(Prov_Nombre, Prov_pais_ID) values('Chaco',1)
insert into provincia(Prov_Nombre, Prov_pais_ID) values('Madrid',4)
insert into ciudad(Ciud_Nombre, Ciud_prov_ID,Ciud_CP) values('Gualeguaychú',1,'E2820'), ('Paraná',1,'E3100'), ('Resistencia',2,'A3500'), ('Federación',1,'E3206'),('Villaguay',1,'E3240'), ('Gualeguay',1,'E2840')
insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_ciud_ID) values('Valentín','Fuentes',17,1), ('Marcos','Zotelo',18,1)
insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_ciud_ID) values('María Alejandra','Aguilar',19,1), ('Mateo', 'Barello', 17, 1)
insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_ciud_ID) values('Tomás','Giachello',19,1), ('Taiel','Moreno',18, 1)

insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_ciud_ID) values('Santino','Núñez',18,1), ('Maia', 'Giachello', 18, 1)
insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_ciud_ID) values('Juan','Perez',18,2), ('Pedro','López', 18, 3)

update alumnos set Alum_nombre='Francisco' where Alum_ID=10
update pais SET Pais_nombre = (upper(Pais_nombre))

delete from alumnos where Alum_ID=10
delete from ciudad where Ciud_ID=6

alter table alumnos add Alum_DNI int not null default 0
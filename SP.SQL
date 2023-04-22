create procedure sp_obtener_alumnos
as
begin
select * from alumnos
end 

create procedure sp_obtener_alumno(
@ID int
)
as
begin
select * from alumnos where Alum_ID = @ID
end

create procedure sp_obtener_ciudades
as
begin
select * from ciudad
end 

create procedure sp_obtener_ciudad(
@ID int
)
as
begin
select * from ciudad where Ciud_ID = @ID
end

create procedure sp_obtener_provincias
as
begin
select * from provincia
end 

create procedure sp_obtener_provincia(
@ID int
)
as
begin
select * from provincia where Prov_ID = @ID
end

create procedure sp_obtener_paises
as
begin
select * from pais
end 

create procedure sp_obtener_pais(
@ID int
)
as
begin
select * from pais where Pais_ID = @ID
end

create procedure sp_insertar_alumno(
@nombre varchar(255),
@apellido varchar(255),
@edad int,
@DNI int,
@ciud_ID int
)
as
begin
insert into alumnos(Alum_nombre, Alum_apellido, Alum_edad, Alum_DNI, Alum_ciud_ID) values(@nombre,@apellido,@edad,@DNI,@ciud_ID)
end

create procedure sp_insertar_ciudad(
@nombre varchar(255),
@CP varchar(255),
@prov_ID int
)
as
begin
insert into ciudad(Ciud_nombre, Ciud_CP, Ciud_prov_ID) values(@nombre,@CP,@prov_ID)
end

create procedure sp_insertar_provincia(
@nombre varchar(255),
@pais_ID int
)
as
begin
insert into provincia(Prov_nombre, Prov_pais_ID) values(@nombre,@pais_ID)
end

create procedure sp_insertar_pais(
@nombre varchar(255)
)
as
begin
insert into pais(Pais_nombre) values(@nombre)
end

create procedure sp_borrar_alumno(
@ID int
)
as
begin
delete from alumnos where Alum_ID = @ID
end

create procedure sp_borrar_ciudad(
@ID int
)
as
begin
delete from ciudad where Ciud_ID = @ID
end

create procedure sp_borrar_provincia(
@ID int
)
as
begin
delete from provincia where Prov_ID = @ID
end

create procedure sp_borrar_pais(
@ID int
)
as
begin
delete from pais where Pais_ID = @ID
end

create procedure sp_actualizar_alumno(
	@ID int,
	@nombre varchar(255),
	@apellido varchar(255),
	@edad int,
	@DNI int,
	@ciud_ID int
)
as
begin
update alumnos 
   set Alum_nombre = @nombre,
       Alum_apellido = @apellido,
       Alum_edad = @edad,
	   Alum_DNI = @DNI,
	   Alum_ciud_ID = @ciud_ID
where Alum_ID = @ID
end

create procedure sp_actualizar_ciudad(
	@ID int,
	@nombre varchar(255),
	@CP varchar(255),
	@prov_ID int
)
as
begin
update ciudad 
   set Ciud_nombre = @nombre,
       Ciud_CP = @CP,
       Ciud_prov_ID = @prov_ID
where Ciud_ID = @ID
end

create procedure sp_actualizar_provincia(
	@ID int,
	@nombre varchar(255),
	@pais_ID int
)
as
begin
update provincia
   set Prov_nombre = @nombre,
       Prov_pais_ID = @pais_ID
where Prov_ID = @ID
end

create procedure sp_actualizar_pais(
	@ID int,
	@nombre varchar(255)
)
as
begin
update pais
   set Pais_nombre = @nombre
where Pais_ID = @ID
end
select Alum_nombre, Alum_apellido, Ciud_nombre from alumnos 
join ciudad on Alum_ciud_ID = Ciud_ID

select Alum_nombre, Alum_apellido, Alum_edad,Alum_DNI from alumnos
join ciudad on Alum_ciud_ID = Ciud_ID
join provincia on Ciud_prov_ID = Prov_ID
join pais on Prov_pais_ID = Pais_ID
where Pais_nombre = 'ARGENTINA'

select Alum_nombre, Alum_apellido, Alum_DNI from alumnos 
join ciudad on Alum_ciud_ID = Ciud_ID
where Ciud_nombre = 'Gualeguay'

select Alum_nombre, Alum_apellido, Alum_edad from alumnos
join ciudad on Alum_ciud_ID = Ciud_ID
join provincia on Ciud_prov_ID = Prov_ID
where Prov_nombre = 'Buenos Aires' and Alum_edad>10
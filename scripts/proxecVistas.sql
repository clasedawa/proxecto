 -- ********************************************************************************************************************
 -- 	V I S T A S
 -- ********************************************************************************************************************
 
 USE proxeccolec;
 
 
 create or replace view vAsiPro (Anho,Ciclo,Asignatura,Profesor)
	as select  anhAnho as anho, cicNom as ciclo,  asiNom as asignatura, usuNom as profesor from asi_pro 
			inner join anho  on asiPro_anhId=anhId 
            inner join asignatura on asiPro_asiID=asiID 
            inner join ciclo on asiCicID=cicID
            inner join usuario on asiPro_usuId=usuId;
 
 select * from vAsiPro;
 
 create or replace view vNotAlu (Anho,Ciclo,Asignatura,Alumno,Evaluacion,Criterio,Valoracion)
	as	select  anhAnho as Anho, cicNom as Ciclo,  asiNom as Asignatura, usuNom as Alumno, evaNom as evaluacion, notNom as Criterio, notAlu_texto as Valoracion from not_alu 
			inner join evaluacion on notAlu_evaId=evaId
            inner join anho  on evaAnhId=anhId 
            inner join asignatura on notAlu_asiID=asiID 
            inner join ciclo on asiCicID=cicID
            inner join usuario on notAlu_usuId=usuId
            inner join nota on notAlu_notId=notId;
            
            
select * from vNotAlu;

create or replace view vRolUsu (ID, Dni, Nombre, Apellidos, Pass, Rol, NombreRol, Estado)
	as select usuId as id, usuDni as Dni, usuNom as nombre, usuApe as Apellidos, usuPas as Pass, rolID as Rol, rolNom as NombreRol, usuEst as Estado from rol_usu 
		inner join usuario on rolUsu_usuID=usuId inner join rol on rolUsu_rolID=rolID;
        
select * from vRolUsu;


-- select asiID,asiNom, (select cicNom from ciclo where asiCicID=cicID)as cicNom,asiEst from asignatura 
-- select asiID,asiNom, cicNom,asiEst from asignatura inner join ciclo on asiCicID=ciclo.cicID

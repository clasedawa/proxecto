 -- ********************************************************************************************************************
 -- 	I N S E R C I Ó N     D E     D A T O S
 -- ********************************************************************************************************************
  USE proxeccolec;


-- OPERACIONES TABLA ANHO

insert into anho (anhAnho,anhEst) values('2014/2015',0);
insert into anho (anhAnho,anhEst) values('2013/2014',1);


-- OPERACIONES EVALUACION

insert into evaluacion (evaAnhId, evaNom, evaFec,evaEst) values((select anhId from anho where anhAnho = '2014/2015'),'primera evaluación','2014-12-20 15:00:00',0);
insert into evaluacion (evaAnhId, evaNom, evaFec,evaEst) values((select anhId from anho where anhAnho = '2014/2015'),'segunda evaluación','2015-03-21 15:00:00',0);
insert into evaluacion (evaAnhId, evaNom, evaFec,evaEst) values((select anhId from anho where anhAnho = '2014/2015'),'tercera evaluacion','2015-06-05 15:00:00',0);


-- OPERACIONES CICLO

insert into ciclo (cicNom,cicEst) values('Desarrollo web',0);
insert into ciclo (cicNom,cicEst) values('Sistema',0);





-- OPERACIONES ASIGNATURA


insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Contornos',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Desenvolvemento cliente',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Despregamento',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Formación y orientación laboral',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Programación',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Desenvolvemento Servidor',0);

insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Sistema'),'Lenguaxe de marcas',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Sistema'),'Empresa e iniciativa',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Sistema'),'Seguridad',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Sistema'),'Formación y orientación laboral',0);
insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Sistema'),'Bases de Datos',0);


insert into asignatura (asiCicID, asiNom, asiEst) values((select cicID from ciclo where cicNom = 'Desarrollo web'),'Lenguaxe de marcas',0);





-- OPERACIONES NOTA

insert into nota (notNom) values('Asistencia');
insert into nota (notNom) values('Puntualidad');
insert into nota (notNom) values('Participación');
insert into nota (notNom) values('Higiene');



-- OPERACIONES USUARIOS

insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas, usuEst)
				values('Dios', 'Perez', '00000000z', '000000000', 'Cielo, S/n','Cielo','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Alberto', 'García Cid', '23456789j', '981981981', 'Alexander von Humbolt 9-1b','A Coruña','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Manuel', 'Corbelle', '12456789j', '888888888', 'Ronda de nelle, 125','Oleiros','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Mala', 'Rodriguez', '72456789f', '666666666', 'Real, 125','Oleiros','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Vito', 'Corleone', '42456789z', '555666666', 'Ferradal, 63','A Coruña','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Rosalia', 'Rey', '02154789z', '985632147', 'Porta do Sur, 75','A Coruña','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Pepa', 'Pepita', '99999999z', '881415415', 'Sinforiano Lopez, 8','A Coruña','Abcd1234.',0);
insert into usuario ( usuNom, usuApe, usuDni, usuTel, usuDir, usuPob, usuPas,  usuEst)
				values('Santi', 'Souto', '87452155y', '000077700', 'Caballeros, S/n','A Coruña','Abcd1234.',0);
                

                
-- OPERACIONES ROL

insert into rol (rolNom,rolEst) values('Profesor',0);
insert into rol (rolNom,rolEst) values('Alumno',0);
insert into rol (rolNom,rolEst) values('Dios',0);
insert into rol (rolNom,rolEst) values('Administrador',0);




-- OPERACIONES ROL-USUARIO

insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '00000000z'),
                       (select rolId from rol where rolNom = 'Dios'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '23456789j'),
                       (select rolId from rol where rolNom = 'Alumno'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '12456789j'),
                       (select rolId from rol where rolNom = 'Profesor'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '72456789f'),
                       (select rolId from rol where rolNom = 'Alumno'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '42456789z'),
                       (select rolId from rol where rolNom = 'Alumno'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '02154789z'),
                       (select rolId from rol where rolNom = 'Alumno'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '99999999z'),
                       (select rolId from rol where rolNom = 'Administrador'));
insert into rol_usu (rolUsu_usuID,rolUsu_rolID) 
				values((select usuId from usuario where usuDni = '87452155y'),
                       (select rolId from rol where rolNom = 'Profesor'));





-- OPERACIONES LOG

insert log (logFec,logUsuId, LogAcc) values(now(),1,'login');



-- OPERACIONES ASI_PRO 		ASIGNATURA-PROFESOR
--
-- El profesor usuDni = '87452155y' imparte la materia 'Lenguaxe de marcas' en los dos ciclos y 
-- 'Contornos' en el ciclo 'Desarrollo web'


insert asi_pro (asiPro_anhId,asiPro_asiID,asiPro_usuId)
			values(	(select anhId from anho where anhAnho = '2014/2015'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select usuId from usuario where usuDni = '87452155y'));
					
            
            
insert asi_pro (asiPro_anhId,asiPro_asiID,asiPro_usuId)
			values(	(select anhId from anho where anhAnho = '2014/2015'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select usuId from usuario where usuDni = '87452155y'));
                    
 
insert asi_pro (asiPro_anhId,asiPro_asiID,asiPro_usuId)
			values(	(select anhId from anho where anhAnho = '2014/2015'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select usuId from usuario where usuDni = '12456789j'));
					
            
            
insert asi_pro (asiPro_anhId,asiPro_asiID,asiPro_usuId)
			values(	(select anhId from anho where anhAnho = '2014/2015'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select usuId from usuario where usuDni = '87452155y')); 
 
 
 
-- OPERACIONES NOT_ALU 		NOTA-ALUMNO

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'En un lugar de la mancha de cuyo nombre no quiero acordarme'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Sed vulputate lorem metus, a mollis risus tincidunt vel. Phasellus imperdiet consectetur volutpat. Donec rhoncus ex elit, eu aliquet nulla fermentum non. Vestibulum accumsan ornare sapien, tincidunt sollicitudin odio hendrerit id. Ut rhoncus vulputate purus, at mollis purus scelerisque quis. Cras id urna lorem. Proin ullamcorper, ipsum id laoreet ultrices, nunc nibh bibendum justo, nec blandit ipsum urna semper ipsum.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Fusce vel porttitor justo. In sed molestie enim, eget hendrerit neque. Morbi sed purus ac massa varius venenatis et et nisl. Nullam ut augue sit amet mi consequat fermentum.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Mauris eget posuere est. Sed tempus dolor eget enim mattis fermentum. Pellentesque aliquam vitae ex volutpat dapibus. Pellentesque varius ipsum nec leo blandit, vel convallis leo rutrum.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Praesent condimentum leo sit amet est tincidunt gravida. Suspendisse vitae orci vel quam eleifend laoreet. Donec dui lectus, tempus ut neque eu, tempor sagittis turpis.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Vivamus rhoncus erat est, id finibus diam pretium sed. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Nam pellentesque urna in nibh sagittis congue. In consequat dignissim lacus ut lacinia. Suspendisse sodales enim nisi, vel commodo orci molestie quis'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Aliquam tempor faucibus diam nec dignissim. Donec lacinia orci felis, id volutpat augue tincidunt eu. Donec euismod et dui ut maximus.');

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
--

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Quisque lacus lacus, sodales vel dolor et, dapibus luctus tortor. Maecenas ultrices orci odio, eget tincidunt lacus mollis euismod.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Proin ullamcorper, ipsum id laoreet ultrices, nunc nibh bibendum justo, nec blandit ipsum urna semper ipsum.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Maecenas ultrices viverra mauris, quis malesuada sapien ullamcorper eleifend. Suspendisse euismod sit amet arcu non scelerisque.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Praesent a fringilla mi. Nullam eget mattis nisi. Aenean a congue lacus. Aliquam non felis lectus. Vivamus sagittis quam felis, sed tristique lorem ornare in.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Duis scelerisque elit rhoncus diam accumsan pharetra. Integer sodales nisl hendrerit neque lacinia, ac ullamcorper nibh tristique. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),' Quisque fringilla porta odio, non condimentum tellus mollis vel. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),' Cras vel elit semper, semper augue porttitor, venenatis nibh.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '23456789j'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Nunc pulvinar laoreet arcu, sit amet ornare nunc. Ut id convallis libero.');

-- 
-- -----'72456789f'------------------------------------------------------------------------------------------------------------------------
--

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Aenean quam ante, lacinia bibendum eros ac, vehicula eleifend sem. Mauris bibendum leo sit amet ante varius efficitur.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Aliquam purus urna, lobortis in velit non, pellentesque commodo dui.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Nulla quis libero feugiat, gravida nisl ac, congue tellus. Suspendisse lacus ante, consequat sit amet egestas nec, ullamcorper at eros.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Pellentesque pretium quam quis efficitur bibendum. Mauris sed leo porttitor, suscipit odio ac, facilisis sem. Proin facilisis feugiat tincidunt.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Pellentesque euismod dui ac orci venenatis, vitae cursus magna volutpat. Quisque eleifend sagittis quam vitae ornare.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Fusce interdum, justo eget cursus varius, nisl enim euismod dui, at finibus magna dolor non tortor. Sed id turpis sodales mauris imperdiet auctor sodales vel diam.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Pellentesque euismod dui ac orci venenatis, vitae cursus magna volutpat. Quisque eleifend sagittis quam vitae ornare. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),' Phasellus eu imperdiet nibh, eu convallis lectus. Curabitur mollis augue eget sodales volutpat. Vivamus aliquam nunc rhoncus, cursus magna eget, ullamcorper ante.');

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
--

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Aenean tellus nunc, malesuada a ligula eget, feugiat accumsan urna.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Praesent rhoncus odio at condimentum rutrum. Sed non nisi faucibus, posuere ligula vitae, congue magna. Donec commodo viverra est nec tincidunt. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Ut id convallis libero.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Quisque fringilla porta odio, non condimentum tellus mollis vel. Nam vel metus non tortor eleifend bibendum eget ac justo. Ut quis enim turpis.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),' Phasellus eu imperdiet nibh, eu convallis lectus. Curabitur mollis augue eget sodales volutpat. Vivamus aliquam nunc rhoncus, cursus magna eget, ullamcorper ante.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Curabitur vitae sem sagittis, rutrum nisi et, facilisis dolor. Proin magna dolor, porttitor eu massa et, sollicitudin sodales dolor. Donec luctus euismod malesuada.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Cras vel elit semper, semper augue porttitor, venenatis nibh. Suspendisse scelerisque purus eu vulputate auctor. In sollicitudin sed libero eget consequat. Vivamus non fringilla risus.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '72456789f'),
					(select asiID from asignatura where asiNom = 'Formación y orientación laboral' and asiCicID = (select cicID from ciclo where cicNom = 'Sistema')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),' Ut imperdiet, massa a lobortis ultrices, ex nulla viverra ipsum, at sodales leo neque malesuada ex. Nunc rhoncus porttitor molestie.');

-- 
-- ----'42456789z'-------------------------------------------------------------------------------------------------------------------------
--
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Cras congue orci mauris, vitae condimentum tellus faucibus non. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Proin at scelerisque mi, quis ultrices quam. Sed in quam vel arcu lacinia tempor eget pretium enim. Proin vestibulum nunc sem, at posuere augue tempor condimentum. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),' Phasellus mi ex, condimentum hendrerit est ac, pulvinar consectetur dui. Fusce tellus sapien, gravida quis pellentesque vel, ornare nec ipsum.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Vivamus posuere enim malesuada est dignissim, euismod tristique est mattis. Sed lacinia tincidunt venenatis. Morbi efficitur eget lacus quis scelerisque.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Aliquam luctus dolor eu maximus pretium. Nulla leo metus, fermentum et lectus in, blandit dictum massa. Phasellus hendrerit nibh arcu.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni ='42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Vestibulum auctor eleifend ante non euismod. Fusce erat orci, consectetur ac cursus sed, elementum sed nunc.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Phasellus odio ex, posuere quis purus ac, luctus vulputate enim. Etiam tristique, ante rhoncus molestie pretium, velit leo faucibus mi, vel dictum elit augue pharetra dui.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni ='42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),' Donec eget commodo mi. Morbi imperdiet rhoncus rutrum. Etiam et euismod lacus. Phasellus malesuada sapien tellus, non fermentum nulla sodales id.');

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
--

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Praesent quam purus, molestie consequat elementum id, bibendum a ante. Fusce aliquet tellus ut nunc malesuada, vitae malesuada dui tempor.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Donec eget commodo mi. Morbi imperdiet rhoncus rutrum. Etiam et euismod lacus. Phasellus malesuada sapien tellus, non fermentum nulla sodales id.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Phasellus odio ex, posuere quis purus ac, luctus vulputate enim. Etiam tristique, ante rhoncus molestie pretium, velit leo faucibus mi, vel dictum elit augue pharetra dui. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Vestibulum auctor eleifend ante non euismod. Fusce erat orci, consectetur ac cursus sed, elementum sed nunc.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'In est turpis, hendrerit eget malesuada at, vestibulum sed nunc. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Suspendisse potenti. Pellentesque ex ligula, tristique id molestie vitae, sollicitudin sed metus. Ut eget tincidunt leo. Nam in ultricies est, vel ullamcorper mauris. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom ='Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Fusce tempus luctus magna at condimentum.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '42456789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Donec ultricies imperdiet eros id pretium. Praesent ac erat augue.');
-- 
-- ----'02154789z'-------------------------------------------------------------------------------------------------------------------------
--
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Phasellus varius elementum nibh, in convallis lacus pharetra vel. Fusce in urna felis. Morbi nec porta est.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Praesent efficitur turpis orci, ut ultricies ligula elementum eget. Sed venenatis eros ac nisi feugiat commodo.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Sed mollis purus a augue posuere, vitae porttitor neque porttitor. Phasellus massa sapien, scelerisque sed porta ac, malesuada nec est. Nulla facilisi.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Curabitur eu sodales libero, sit amet ultricies odio. Maecenas ut eros id ex bibendum cursus.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Fusce vel augue sed lorem porta cursus. Mauris porta fermentum sem, vel iaculis dolor.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni ='02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Aliquam aliquet, magna ac congue semper, dolor urna venenatis massa, in convallis urna risus eget nunc. Donec imperdiet sagittis neque, eget condimentum nibh convallis id. Praesent et magna tellus.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Vivamus lectus magna, hendrerit scelerisque fringilla eu, tristique id turpis. Cras felis neque, commodo vitae imperdiet nec, venenatis in magna.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni ='02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'primera evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),' Maecenas interdum porta diam at placerat. Aliquam varius sit amet nunc elementum consequat. In ut mauris pretium nisl fringilla vulputate et non elit.');

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
--

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Proin sed lorem efficitur nisl egestas vehicula. Nam semper vitae diam semper accumsan. Aenean posuere massa et eros ullamcorper, in volutpat justo sodales.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),' Aliquam venenatis neque a nibh tempus efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),' Pellentesque dapibus augue justo, a sodales lorem euismod eget. Pellentesque tristique a nulla a rhoncus. Vivamus gravida pharetra sapien sit amet cursus. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Lenguaxe de marcas' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Maecenas non augue et mauris aliquam vestibulum.'); 

-- 
-- -----------------------------------------------------------------------------------------------------------------------------
-- 
insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Asistencia'),'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ullamcorper sodales nulla, non interdum sem sagittis ac.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Puntualidad'),'Sed ac magna a odio congue scelerisque. In quis sapien finibus, viverra diam ut, pretium nisl. Aliquam luctus est nec risus gravida dictum. '); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom ='Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Participación'),'Mauris fringilla nisl eget tempus malesuada. Sed ut dictum urna. Etiam vestibulum tortor in nibh imperdiet, non eleifend nibh pulvinar. In non erat non diam varius mollis.'); 

insert not_alu (notAlu_usuId,notAlu_asiID,notAlu_evaId,notAlu_notId,notAlu_texto)
			values((select usuId from usuario where usuDni = '02154789z'),
					(select asiID from asignatura where asiNom = 'Contornos' and asiCicID = (select cicID from ciclo where cicNom = 'Desarrollo web')),
					(select evaID from evaluacion where evaNom = 'segunda evaluación'  and evaAnhId = (select anhId from anho where anhAnho = '2014/2015')),
                    (select notId from nota where notNom = 'Higiene'),'Sed ac magna a odio congue scelerisque. In quis sapien finibus, viverra diam ut, pretium nisl. Aliquam luctus est nec risus gravida dictum. ');



 
 



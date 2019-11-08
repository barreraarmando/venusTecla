drop procedure nuevaPrenda;
describe prenda;
delimiter ||
create procedure nuevaPrenda (in usuario varchar(70), idPrenda int(10), idTalla int(10), urlImg varchar(100), description varchar(500), price varchar(10), favorite varchar(10), inchange varchar(10))
begin

declare idUsuario int; 

set idUsuario=(select Id_Usuario from usuario where Username_Usuario=usuario);

insert into prenda (Id_Usuario,Id_catPrenda,Id_catTalla,imagen,descripcion,precio,favorito,intercambiable) values (idUsuario,idPrenda,idTalla,urlImg,description,price,favorite,inchange);

end;||

delimiter ;
call nuevaPrenda('MarbellaVelazquez',12,3,'Uploads/Prendas/vestido1.jpeg','Esta prenda me encanta','300.00','N','S');
drop procedure updatePrenda;
delimiter ||
create procedure updatePrenda(in idTipoPrenda int(15), idPrenda int(10), idTalla int(10), urlImg varchar(100), description varchar(500), price varchar(10), favorite varchar(10), inchange varchar(10))
begin

update prenda set Id_catTalla=idTalla, imagen=urlImg, descripcion=description, precio=price, favorito=favorite, intercambiable=inchange where Id_Prenda=idPrenda;

end;||

delimiter ;

drop procedure seleccionarTipoPrendas;

delimiter ||
create procedure seleccionarTipoPrendas (in usuario varchar(70))
begin

declare idUsuario int; 

set idUsuario=(select Id_Usuario from usuario where Username_Usuario=usuario);

select catTipoPrenda.prenda from prenda inner join catTipoPrenda on prenda.Id_catPrenda=cattipoprenda.Id_catPrenda where Id_Usuario=idUsuario group by prenda.Id_catPrenda;

end;||

delimiter ;
call seleccionarTipoPrendas('MarbellaVelazquez');

delimiter ||
create procedure select1(in usuario varchar(70))
begin

declare idUsuario int; 

set idUsuario=(select Id_Usuario from usuario where Username_Usuario=usuario);

select count(*) from prenda where Id_Usuario=idUsuario group by Id_catPrenda;

end;||

delimiter ;
call select1('MarbellaVelazquez');

drop procedure ImagenTipoPrendaUsuario;
delimiter ||
create procedure ImagenTipoPrendaUsuario(in usuario varchar(70), tipoPrenda varchar(15))
begin

declare idUsuario int; 

set idUsuario=(select Id_Usuario from usuario where Username_Usuario=usuario);

select imagen,Id_Prenda from prenda inner join cattipoprenda on prenda.Id_catPrenda=cattipoprenda.Id_catPrenda where cattipoprenda.prenda=tipoPrenda and Id_Usuario=idUsuario;

end;||

delimiter ;
call ImagenTipoPrendaUsuario('MarbellaVelazquez','Vestido');

delimiter ||
create procedure select2(in idPrenda int(15))
begin

select * from prenda inner join cattipoprenda on prenda.Id_catPrenda=cattipoprenda.Id_catPrenda
inner join cattallas on prenda.Id_catTalla=cattallas.Id_catTalla
where Id_Prenda=idPrenda;

end;||

delimiter ;

 delimiter ||
 create procedure nuevoMaterial(in descripcion varchar(50))
 begin
 
 declare idM int;
 declare idT int;
 
 insert into materiales (material) values(descripcion);
 
 set idM = (select max(idMaterial) from materiales);
 set idT = (select max(idTutorial) from tutoriales);
 
 insert into relmaterialtutorial (idMaterial, Id_Tutorial) values(idM,idT);
 
 end;||
 delimiter ;
 
 
 delimiter ||
 create procedure nuevaMultimedia(in descripcion varchar(50))
 begin
 
 declare idM int;
 declare idT int;
 
 insert into multimedia (multimedia) values(descripcion);
 
 set idM = (select max(idMultimedia) from multimedia);
 set idT = (select max(idTutorial) from tutoriales);
 
 insert into relmultimediatutorial (idMultimedia, Id_Tutorial) values(idM,idT);
 
 end;||
 delimiter ;

call select2(5);

call select2(5);
select * from prenda;
describe prenda;
describe cattipoprenda;
select * from prenda inner join cattipoprenda on prenda.Id_catPrenda=cattipoprenda.Id_catPrenda
inner join cattallas on prenda.Id_catTalla=cattallas.Id_catTalla
where Id_Prenda=3;




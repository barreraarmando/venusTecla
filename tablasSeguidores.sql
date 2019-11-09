use venus;

create table seguidor(
	Id_Usuario int(10) not null,
    Id_Seguidor int(10) not null
);

alter table seguidor add constraint KF1 Primary Key
(Id_Usuario, Id_Seguidor);

alter table seguidor add constraint FK1 Foreign Key
(Id_Usuario) references usuario(Id_Usuario)
on delete cascade on update cascade;

alter table seguidor add constraint FK2 Foreign Key
(Id_Seguidor) references usuario(Id_Usuario)
on delete cascade on update cascade;

create table siguiendo(
	Id_Usuario int(10) not null,
    Id_Siguiendo int(10) not null
);

alter table siguiendo add constraint KF2 Primary Key
(Id_Usuario, Id_Siguiendo);

alter table siguiendo add constraint FK3 Foreign Key
(Id_Usuario) references usuario(Id_Usuario)
on delete cascade on update cascade;

alter table siguiendo add constraint FK4 Foreign Key
(Id_Siguiendo) references usuario(Id_Usuario)
on delete cascade on update cascade;
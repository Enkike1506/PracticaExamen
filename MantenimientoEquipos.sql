create database MantenimientoEquipos
go

use MantenimientoEquipos
go

create table Usuarios
(
UsiarioID int primary key identity(1,1),
Nombre varchar(50),
CorreoElectronico varchar(100),
Telefono varchar(13)
)

create table Equipos
(
EquipoID int primary key identity(1,1),
TipoEquipo varchar(50),
Modelo varchar(50),
UsuarioID int foreign key references Usuarios
)

create table Reparaciones
(
ReparacionID int primary key identity(1,1),
EquipoID int foreign key references Equipos,
FechaSolicitud date,
Estado varchar(20)
)

create table DetallesReparacion
(
DetalleID int primary key identity(1,1),
ReparacionID int foreign key references Reparaciones,
Descripcion varchar(500),
FechaInicio date,
FechaFin date
)

create table Tecnicos
(
TecnicoID int primary key identity(1,1),
Nombre varchar(50),
Especialidad varchar(20)
)

create table Asignaciones
(
AsignacionID int primary key identity(1,1),
ReparacionID int foreign key references Reparaciones,
TecnicoID int foreign key references Tecnicos,
FechaAsignacion date
)
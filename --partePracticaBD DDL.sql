--partePracticaBD DDL
CREATE TABLE Ciudad(
    ciudadID INT PRIMARY KEY,
    nombreCiudad VARCHAR(100),
    codigoPostal INT
);

CREATE TABLE TipoUsuario(
    tipoID INT PRIMARY KEY,
    nombreTipo VARCHAR(100)
);

CREATE TABLE Usuario(
    usuarioID INT PRIMARY KEY,
    nombreUsuario VARCHAR(100),
    apellidoUsuario VARCHAR(100),
    tipoID INT,
    ciudadID INT,
    FOREIGN KEY(tipoID) REFERENCES TipoUsuario(tipoID),
    FOREIGN KEY(ciudadID) REFERENCES Ciudad(ciudadID)
);

CREATE TABLE condicionEspecial(
    usuarioID INT,
    nombreCondicion VARCHAR(100),
    FOREIGN KEY(UsuarioID) REFERENCES Usuario(usuarioID)
);

CREATE TABLE Empleado(
    empleadoID INT PRIMARY KEY,
    cargoEmpleado VARCHAR(100),
    departamento VARCHAR(100),
    usuarioID INT,
    FOREIGN KEY(usuarioID) REFERENCES Usuario(usuarioID)
);

CREATE TABLE Medio(
    medioID INT PRIMARY KEY,
    tipoMedio VARCHAR(100),
    texto VARCHAR(100)
);

CREATE TABLE Notificacion(
    notificacionID INT PRIMARY KEY,
    mensaje VARCHAR(100),
    fechaEnvio DATE,
    estadoNotificacion VARCHAR(100),
    usuarioID INT,
    medioID INT,
    FOREIGN KEY(usuarioID) REFERENCES Usuario(usuarioID),
    FOREIGN KEY(medioID) REFERENCES Medio(medioID)
);

CREATE TABLE Servicio(
    servicioID INT PRIMARY KEY,
    nombreServicio VARCHAR(100),
    descripcion VARCHAR(100),
    estadoServicio VARCHAR(100)
);

CREATE TABLE Turno(
    fechaTurno DATE,
    horaInicio TIME,
    horaFin TIME,
    usuarioID INT,
    servicioID INT,
    empleadoID INT, 
    PRIMARY KEY(usuarioID, servicioID, empleadoID),
    FOREIGN KEY(usuarioID) REFERENCES Usuario(usuarioID),
    FOREIGN KEY(servicioID) REFERENCES Servicio(servicioID),
    FOREIGN KEY(empleadoID) REFERENCES Empleado(empleadoID)
);
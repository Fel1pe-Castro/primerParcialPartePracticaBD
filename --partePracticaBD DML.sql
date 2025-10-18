--partePracticaDB DML

INSERT INTO Ciudad (ciudadID, nombreCiudad, codigoPostal) VALUES
(1, 'Bogotá', 110111),
(2, 'Medellín', 50001),
(3, 'Cali', 760001),
(4, 'Barranquilla', 80001),
(5, 'Cartagena', 130001),
(6, 'Bucaramanga', 680001),
(7, 'Pereira', 660001),
(8, 'Manizales', 170001),
(9, 'Santa Marta', 470001),
(10, 'Cúcuta', 540001);


INSERT INTO TipoUsuario (tipoID, nombreTipo) VALUES
(1, 'Administrador'),
(2, 'Empleado'),
(3, 'Cliente'),
(4, 'Proveedor'),
(5, 'Gerente'),
(6, 'Soporte Técnico'),
(7, 'Supervisor'),
(8, 'Operario'),
(9, 'Becario'),
(10, 'Invitado');


INSERT INTO Usuario (usuarioID, nombreUsuario, apellidoUsuario, tipoID, ciudadID) VALUES
(1, 'Juan', 'Pérez', 1, 1),
(2, 'María', 'López', 3, 2),
(3, 'Carlos', 'Gómez', 2, 3),
(4, 'Ana', 'Martínez', 3, 4),
(5, 'Pedro', 'Ramírez', 5, 5),
(6, 'Luisa', 'Torres', 6, 6),
(7, 'Jorge', 'Morales', 4, 7),
(8, 'Diana', 'Castaño', 2, 8),
(9, 'Sofía', 'Hernández', 7, 9),
(10, 'Andrés', 'Vargas', 8, 10);


INSERT INTO condicionEspecial (usuarioID, nombreCondicion) VALUES
(1, 'Discapacidad visual'),
(2, 'Tercera edad'),
(3, 'Embarazo'),
(4, 'Movilidad reducida'),
(5, 'Incapacitado'),
(6, 'Alergias severas'),
(7, 'Problemas cardíacos'),
(8, 'Ciego'),
(9, 'Trastorno auditivo'),
(10, 'Ninguna');


INSERT INTO Empleado (empleadoID, cargoEmpleado, departamento, usuarioID) VALUES
(1, 'Cajero', 'Ventas', 3),
(2, 'Técnico', 'Soporte', 6),
(3, 'Gerente de área', 'Administración', 5),
(4, 'Auxiliar', 'Logística', 7),
(5, 'Vendedor', 'Comercial', 8),
(6, 'Supervisor', 'Producción', 9),
(7, 'Operario', 'Mantenimiento', 10),
(8, 'Analista', 'Finanzas', 1),
(9, 'Recepcionista', 'Atención al cliente', 2),
(10, 'Coordinador', 'RRHH', 4);


INSERT INTO Medio (medioID, tipoMedio, texto) VALUES
(1, 'Email', 'Correo electrónico institucional'),
(2, 'SMS', 'Mensaje de texto'),
(3, 'WhatsApp', 'Mensaje instantáneo'),
(4, 'Llamada', 'Comunicación telefónica'),
(5, 'Carta', 'Correspondencia física'),
(6, 'App', 'Notificación push en aplicación'),
(7, 'Telegram', 'Canal de soporte'),
(8, 'Facebook', 'Mensaje privado'),
(9, 'Twitter', 'Mensaje directo'),
(10, 'Portal web', 'Notificación en la plataforma');


INSERT INTO Notificacion (notificacionID, mensaje, fechaEnvio, estadoNotificacion, usuarioID, medioID) VALUES
(1, 'Su turno ha sido confirmado', '2025-10-10', 'Enviado', 2, 1),
(2, 'Su contraseña fue actualizada', '2025-10-11', 'Leído', 1, 6),
(3, 'Recordatorio de cita', '2025-10-12', 'Pendiente', 3, 2),
(4, 'Actualización del sistema', '2025-10-13', 'Enviado', 6, 3),
(5, 'Encuesta de satisfacción', '2025-10-14', 'Pendiente', 5, 5),
(6, 'Factura disponible', '2025-10-15', 'Leído', 8, 10),
(7, 'Mantenimiento programado', '2025-10-16', 'Enviado', 9, 4),
(8, 'Nuevo servicio disponible', '2025-10-17', 'Leído', 7, 7),
(9, 'Actualización de datos', '2025-10-18', 'Pendiente', 10, 8),
(10, 'Bienvenido al sistema', '2025-10-19', 'Leído', 4, 9);

INSERT INTO Servicio (servicioID, nombreServicio, descripcion, estadoServicio) VALUES
(1, 'Atención al cliente', 'Soporte general a usuarios', 'Activo'),
(2, 'Mantenimiento', 'Revisión técnica de equipos', 'Activo'),
(3, 'Instalación', 'Instalación de productos', 'Activo'),
(4, 'Capacitación', 'Entrenamiento de personal', 'Inactivo'),
(5, 'Consultoría', 'Asesoría especializada', 'Activo'),
(6, 'Reparación', 'Reparación de equipos', 'Activo'),
(7, 'Logística', 'Gestión de envíos y entregas', 'Activo'),
(8, 'Facturación', 'Emisión y control de facturas', 'Activo'),
(9, 'Seguridad', 'Control de accesos', 'Activo'),
(10, 'Soporte remoto', 'Asistencia virtual', 'Activo');


INSERT INTO Turno (fechaTurno, horaInicio, horaFin, usuarioID, servicioID, empleadoID) VALUES
('2025-10-10', '08:00:00', '12:00:00', 2, 1, 9),
('2025-10-10', '09:00:00', '13:00:00', 1, 5, 8),
('2025-10-11', '10:00:00', '14:00:00', 3, 2, 1),
('2025-10-11', '11:00:00', '15:00:00', 4, 3, 10),
('2025-10-12', '12:00:00', '16:00:00', 5, 4, 3),
('2025-10-12', '13:00:00', '17:00:00', 6, 6, 2),
('2025-10-13', '14:00:00', '18:00:00', 7, 7, 4),
('2025-10-13', '15:00:00', '19:00:00', 8, 8, 5),
('2025-10-14', '16:00:00', '20:00:00', 9, 9, 6),
('2025-10-15', '17:00:00', '21:00:00', 10, 10, 7);

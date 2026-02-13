-- INSERT
INSERT INTO medicos (nombre, apellidos, dni, telefono, email, especialidad, tipo_medico, fecha_alta, activo) VALUES
('María', 'García López', '12345678A', '600111222', 'maria.garcia@medisistema.com', 'Medicina General', 'titular', '2020-01-15', TRUE),
('José', 'Martínez Ruiz', '23456789B', '600222333', 'jose.martinez@medisistema.com', 'Pediatría', 'titular', '2019-03-20', TRUE),
('Isabel', 'Sánchez Torres', '78901234G', '600777888', 'isabel.sanchez@medisistema.com', 'Medicina General', 'interino', '2023-01-10', TRUE),
('Alberto', 'Castro Vargas', '45670123N', '601555666', 'alberto.castro@medisistema.com', 'Medicina General', 'sustituto', '2024-05-01', TRUE);


INSERT INTO horarios_consulta (id_medico, dia_semana, hora_inicio, hora_fin) VALUES
(1, 'lunes', '08:00:00', '14:00:00'),
(1, 'martes', '08:00:00', '14:00:00'),
(2, 'lunes', '09:00:00', '15:00:00'),
(3, 'jueves', '16:00:00', '20:00:00'),
(3, 'viernes', '10:00:00', '14:00:00'),
(4, 'jueves', '08:00:00', '15:00:00'),
(4, 'viernes', '08:00:00', '15:00:00'),
(5, 'viernes', '15:00:00', '21:00:00'),
(6, 'viernes', '09:00:00', '13:00:00'),
(7, 'viernes', '08:00:00', '14:00:00'),
(8, 'jueves', '10:00:00', '14:00:00'),
(9, 'viernes', '16:00:00', '20:00:00'),
(10, 'jueves', '08:00:00', '14:00:00'),
(10, 'viernes', '08:00:00', '14:00:00'),
(11, 'jueves', '09:00:00', '15:00:00'),
(12, 'viernes', '10:00:00', '14:00:00'),
(13, 'miércoles', '08:00:00', '15:00:00');

INSERT INTO sustituciones (id_medico_titular, id_medico_sustituto, fecha_inicio, fecha_fin, motivo, activo) VALUES
(1, 10, '2024-01-10', '2024-01-20', 'Formación médica', FALSE),
(2, 11, '2024-02-15', '2024-02-25', 'Vacaciones', FALSE),
(3, 12, '2024-03-01', '2024-03-10', 'Baja médica', FALSE),
(1, 10, '2025-02-10', '2025-02-20', 'Vacaciones', TRUE),
(3, 12, '2025-02-05', '2025-02-25', 'Formación especializada', TRUE),
(5, 14, '2025-02-12', '2025-02-18', 'Baja médica', TRUE),
(2, 11, '2025-03-01', '2025-03-15', 'Congreso médico', FALSE),
(4, 13, '2025-03-10', '2025-03-20', 'Vacaciones', FALSE),
(6, 10, '2024-11-05', '2024-11-15', 'Permiso personal', FALSE),
(5, 10, '2024-12-20', '2024-12-30', 'Vacaciones navideñas', FALSE);

INSERT INTO empleados (nombre, apellidos, dni, telefono, email, tipo_empleado, fecha_alta, activo) VALUES
('Lucía', 'Romero Blanco', '11111111A', '611111111', 'lucia.romero@medisistema.com', 'ATS', '2020-05-10', TRUE),
('David', 'Herrera Parra', '22222222B', '622222222', 'david.herrera@medisistema.com', 'ATS', '2021-03-15', TRUE),
('Cristina', 'Delgado Rubio', '77777777G', '677777777', 'cristina.delgado@medisistema.com', 'auxiliar_enfermeria', '2022-02-14', TRUE),
('Enrique', 'Moya Guerrero', '10101010J', '610101010', 'enrique.moya@medisistema.com', 'celador', '2019-09-12', TRUE),
('Silvia', 'Gallego Marín', '40404040M', '640404040', 'silvia.gallego@medisistema.com', 'administrativo', '2021-05-20', TRUE);

INSERT INTO vacaciones_medicos (id_medico, fecha_inicio, fecha_fin, tipo_vacacion, observaciones) VALUES
(1, '2025-02-10', '2025-02-20', 'planificadas', 'Vacaciones de invierno'),
(2, '2025-03-01', '2025-03-15', 'planificadas', 'Vacaciones escolares'),
(3, '2025-04-10', '2025-04-20', 'planificadas', 'Vacaciones de primavera'),
(4, '2025-06-15', '2025-06-30', 'planificadas', 'Vacaciones de verano'),
(5, '2025-07-01', '2025-07-15', 'planificadas', 'Vacaciones de verano'),
(6, '2025-08-01', '2025-08-21', 'planificadas', 'Vacaciones de verano'),
(7, '2025-05-05', '2025-05-12', 'planificadas', 'Vacaciones cortas'),
(8, '2025-09-10', '2025-09-17', 'planificadas', 'Vacaciones'),
(1, '2024-12-23', '2024-12-30', 'disfrutadas', 'Vacaciones navideñas'),
(2, '2024-08-01', '2024-08-15', 'disfrutadas', 'Vacaciones de verano 2024');

INSERT INTO vacaciones_empleados (id_empleado, fecha_inicio, fecha_fin, tipo_vacacion, observaciones) VALUES
(1, '2025-03-15', '2025-03-25', 'planificadas', 'Vacaciones de primavera'),
(2, '2025-04-01', '2025-04-10', 'planificadas', 'Vacaciones de Semana Santa'),
(3, '2025-05-10', '2025-05-20', 'planificadas', 'Vacaciones'),
(6, '2024-09-05', '2024-09-18', 'disfrutadas', 'Vacaciones de verano 2024'),
(7, '2024-10-10', '2024-10-17', 'disfrutadas', 'Vacaciones de otoño'),
(8, '2024-11-15', '2024-11-22', 'disfrutadas', 'Vacaciones de otoño'),
(9, '2024-12-20', '2024-12-27', 'disfrutadas', 'Vacaciones navideñas'),
(10, '2024-07-01', '2024-07-15', 'disfrutadas', 'Vacaciones de verano 2024'),
(11, '2024-08-01', '2024-08-15', 'disfrutadas', 'Vacaciones de verano 2024'),
(12, '2024-09-10', '2024-09-24', 'disfrutadas', 'Vacaciones de otoño');

INSERT INTO pacientes (nombre, apellidos, dni, fecha_nacimiento, telefono, email, direccion, numero_seguridad_social, activo) VALUES
('Juan', 'Pérez García', 'P1111111A', '1980-05-15', '711111111', 'juan.perez@email.com', 'Calle Mayor 1, Madrid', 'SS-111111111', TRUE),
('María', 'López Martín', 'P2222222B', '1975-08-20', '722222222', 'maria.lopez@email.com', 'Avenida España 25, Madrid', 'SS-222222222', TRUE),
('Antonio', 'González Ruiz', 'P3333333C', '1990-03-10', '733333333', 'antonio.gonzalez@email.com', 'Plaza del Sol 5, Madrid', 'SS-333333333', TRUE),
('Carmen', 'Sánchez Torres', 'P4444444D', '1985-11-22', '744444444', 'carmen.sanchez@email.com', 'Calle Luna 12, Madrid', 'SS-444444444', TRUE),
('José', 'Martín Pérez', 'P5555555E', '1992-07-08', '755555555', 'jose.martin@email.com', 'Avenida Libertad 8, Madrid', 'SS-555555555', TRUE),
('Ana', 'Fernández López', 'P6666666F', '1988-02-14', '766666666', 'ana.fernandez@email.com', 'Calle Estrella 20, Madrid', 'SS-666666666', TRUE);

INSERT INTO asignaciones_pacientes (id_paciente, id_medico, fecha_asignacion, activo) VALUES
(1, 1, '2023-01-15', TRUE),
(2, 1, '2023-02-10', TRUE),
(3, 1, '2023-03-05', TRUE),
(4, 1, '2023-04-12', TRUE),
(5, 1, '2023-05-20', TRUE),
(6, 1, '2023-06-15', TRUE),
(7, 1, '2023-07-08', TRUE),
(8, 1, '2023-08-22', TRUE),
(9, 1, '2023-09-14', TRUE),
(10, 1, '2023-10-30', TRUE);

INSERT INTO supervision_empleados (id_empleado, id_medico, fecha_inicio, activo) VALUES
(1, 1, '2020-05-10', TRUE),
(2, 2, '2021-03-15', TRUE),  
(3, 3, '2019-07-20', TRUE),
(4, 4, '2020-08-12', TRUE),
(5, 5, '2021-01-18', TRUE),  
(6, 6, '2019-11-22', TRUE),  
(7, 1, '2022-02-14', TRUE);  


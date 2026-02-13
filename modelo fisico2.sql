-- INSERST
USE medisistema;

INSERT INTO medicos (nombre, apellidos, dni, telefono, email, especialidad, tipo_medico, fecha_alta, activo) VALUES
('María', 'García López', '12345678A', '600111222', 'maria.garcia@medisistema.com', 'Medicina General', 'titular', '2020-01-15', 1),
('José', 'Martínez Ruiz', '23456789B', '600222333', 'jose.martinez@medisistema.com', 'Pediatría', 'interino', '2019-03-20', 1),
('Ana', 'Fernández Sánchez', '34567890C', '600333444', 'ana.fernandez@medisistema.com', 'Cardiología', 'titular', '2018-06-10', 1),
('Francisco', 'Moreno Gil', '01234567J', '601111222', 'francisco.moreno@medisistema.com', 'Medicina General', 'sustituto', '2024-01-05', 1);

INSERT INTO horarios_consulta (id_medico, dia_semana, hora_inicio, hora_fin) VALUES
(1, 'lunes', '08:00:00', '14:00:00'),
(1, 'martes', '08:00:00', '14:00:00'),
(2, 'lunes', '09:00:00', '15:00:00'),
(3, 'miércoles', '10:00:00', '14:00:00');

INSERT INTO sustituciones (id_medico_titular, id_medico_sustituto, fecha_inicio, fecha_fin, motivo, activo) VALUES
(1, 4, '2024-01-10', '2024-01-20', 'Formación médica', 0),
(1, 4, '2025-02-10', '2025-02-20', 'Vacaciones', 1),
(3, 4, '2025-02-05', '2025-02-25', 'Formación especializada', 1),
(2, 4, '2025-03-01', '2025-03-15', 'Congreso médico', 0);

INSERT INTO empleados (nombre, apellidos, dni, telefono, email, tipo_empleado, fecha_alta, activo) VALUES
('Lucía', 'Romero Blanco', '11111111A', '611111111', 'lucia.romero@medisistema.com', 'ATS', '2020-05-10', 1),
('Roberto', 'Ortiz Luna', '44444444D', '644444444', 'roberto.ortiz@medisistema.com', 'auxiliar_enfermeria', '2020-08-12', 1),
('Manuel', 'Cortés Vázquez', '88888888H', '688888888', 'manuel.cortes@medisistema.com', 'celador', '2020-04-05', 1),
('Beatriz', 'Navarro Campos', '20202020K', '620202020', 'beatriz.navarro@medisistema.com', 'administrativo', '2018-12-01', 1);

INSERT INTO vacaciones_medicos (id_medico, fecha_inicio, fecha_fin, tipo_vacacion, observaciones) VALUES
(1, '2025-02-10', '2025-02-20', 'planificadas', 'Vacaciones de invierno'),
(2, '2025-03-01', '2025-03-15', 'planificadas', 'Vacaciones escolares'),
(1, '2024-07-01', '2024-07-21', 'disfrutadas', 'Vacaciones de verano 2024'),
(3, '2024-06-15', '2024-06-30', 'disfrutadas', 'Vacaciones de verano 2024');

INSERT INTO vacaciones_empleados (id_empleado, fecha_inicio, fecha_fin, tipo_vacacion, observaciones) VALUES
(1, '2025-03-15', '2025-03-25', 'planificadas', 'Vacaciones de primavera'),
(2, '2025-04-01', '2025-04-10', 'planificadas', 'Vacaciones de Semana Santa'),
(1, '2024-07-05', '2024-07-19', 'disfrutadas', 'Vacaciones de verano 2024'),
(3, '2024-06-20', '2024-07-05', 'disfrutadas', 'Vacaciones de verano 2024');

INSERT INTO pacientes (nombre, apellidos, dni, fecha_nacimiento, telefono, email, direccion, numero_seguridad_social, activo) VALUES
('Juan', 'Pérez García', 'P1111111A', '1980-05-15', '711111111', 'juan.perez@email.com', 'Calle Mayor 1, Madrid', 'SS-111111111', 1),
('María', 'López Martín', 'P2222222B', '1975-08-20', '722222222', 'maria.lopez@email.com', 'Avenida España 25, Madrid', 'SS-222222222', 1),
('Antonio', 'González Ruiz', 'P3333333C', '1990-03-10', '733333333', 'antonio.gonzalez@email.com', 'Plaza del Sol 5, Madrid', 'SS-333333333', 1),
('Carmen', 'Sánchez Torres', 'P4444444D', '1985-11-22', '744444444', 'carmen.sanchez@email.com', 'Calle Luna 12, Madrid', 'SS-444444444', 1);

INSERT INTO asignaciones_pacientes (id_paciente, id_medico, fecha_asignacion, activo) VALUES
(1, 1, '2023-01-15', 1),
(2, 1, '2023-02-10', 1),
(3, 2, '2023-03-05', 1),
(4, 3, '2023-04-12', 1);

INSERT INTO supervision_empleados (id_empleado, id_medico, fecha_inicio, activo) VALUES
(1, 1, '2020-05-10', 1),
(2, 2, '2021-03-15', 1),
(3, 3, '2019-07-20', 1),
(4, 1, '2018-12-01', 1);
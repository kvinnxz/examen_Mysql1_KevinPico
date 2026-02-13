DROP DATABASE IF EXISTS medisistema;
CREATE DATABASE medisistema;
USE medisistema;

-- cREACION DE TABLAS
CREATE TABLE medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    especialidad VARCHAR(100),
    tipo_medico VARCHAR(20) NOT NULL,
    fecha_alta DATE NOT NULL,
    activo INT DEFAULT 1
);

CREATE TABLE horarios_consulta (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT NOT NULL,
    dia_semana VARCHAR(20) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE sustituciones (
    id_sustitucion INT AUTO_INCREMENT PRIMARY KEY,
    id_medico_titular INT NOT NULL,
    id_medico_sustituto INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    motivo VARCHAR(200),
    activo INT DEFAULT 1,
    FOREIGN KEY (id_medico_titular) REFERENCES medicos(id_medico),
    FOREIGN KEY (id_medico_sustituto) REFERENCES medicos(id_medico)
);

CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    tipo_empleado VARCHAR(50) NOT NULL,
    fecha_alta DATE NOT NULL,
    activo INT DEFAULT 1
);

CREATE TABLE vacaciones_medicos (
    id_vacacion INT AUTO_INCREMENT PRIMARY KEY,
    id_medico INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    tipo_vacacion VARCHAR(20) NOT NULL,
    observaciones TEXT,
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);
CREATE TABLE vacaciones_empleados (
    id_vacacion INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    tipo_vacacion VARCHAR(20) NOT NULL,
    observaciones TEXT,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);

CREATE TABLE pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    dni VARCHAR(20) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100),
    direccion VARCHAR(200),
    numero_seguridad_social VARCHAR(50),
    activo INT DEFAULT 1
);

CREATE TABLE asignaciones_pacientes (
    id_asignacion INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    fecha_asignacion DATE NOT NULL,
    fecha_desasignacion DATE NULL,
    activo INT DEFAULT 1,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

CREATE TABLE supervision_empleados (
    id_supervision INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    id_medico INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NULL,
    activo INT DEFAULT 1,
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado),
    FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);
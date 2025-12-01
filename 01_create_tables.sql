CREATE TABLE Paciente (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE,
    endereco VARCHAR(255),
    convenio VARCHAR(50)
);

CREATE TABLE Medico (
    idMedico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    registroProfissional VARCHAR(20) UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE Consulta (
    idConsulta INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    horario TIME NOT NULL,
    status ENUM('agendada','realizada','cancelada') NOT NULL,
    idPaciente INT NOT NULL,
    idMedico INT NOT NULL,
    FOREIGN KEY (idPaciente) REFERENCES Paciente(idPaciente),
    FOREIGN KEY (idMedico) REFERENCES Medico(idMedico)
);

CREATE TABLE Prontuario (
    idProntuario INT PRIMARY KEY AUTO_INCREMENT,
    diagnostico TEXT NOT NULL,
    prescricao TEXT,
    observacoes TEXT,
    idConsulta INT UNIQUE,
    FOREIGN KEY (idConsulta) REFERENCES Consulta(idConsulta)
);

CREATE TABLE Exame (
    idExame INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    dataAnexo DATE NOT NULL,
    arquivo VARCHAR(255) NOT NULL,
    idConsulta INT,
    FOREIGN KEY (idConsulta) REFERENCES Consulta(idConsulta)
);

CREATE TABLE Horario_Medico (
    idHorario INT PRIMARY KEY AUTO_INCREMENT,
    idMedico INT NOT NULL,
    diaSemana ENUM('Seg','Ter','Qua','Qui','Sex','Sab','Dom') NOT NULL,
    horaInicio TIME NOT NULL,
    horaFim TIME NOT NULL,
    FOREIGN KEY (idMedico) REFERENCES Medico(idMedico)
);

INSERT INTO Paciente (nome, dataNascimento, cpf, telefone, email, endereco, convenio)
VALUES
('Ana Pereira', '1993-08-15', '12345678901', '11988887777', 'ana@gmail.com', 'Rua A, 100', 'Unimed'),
('Bruno Silva', '1985-11-21', '22233344455', '11977776666', 'bruno@gmail.com', 'Rua B, 200', 'SulAmerica');

INSERT INTO Medico (nome, especialidade, registroProfissional, telefone)
VALUES
('Dr. Carlos Lima', 'Cardiologia', 'CRM12345', '11999995555'),
('Dra. Marina Souza', 'Dermatologia', 'CRM54321', '11966664444');

INSERT INTO Consulta (data, horario, status, idPaciente, idMedico)
VALUES
('2025-03-10', '09:00:00', 'agendada', 1, 1),
('2025-03-11', '14:30:00', 'realizada', 2, 2);

INSERT INTO Prontuario (diagnostico, prescricao, observacoes, idConsulta)
VALUES
('Hipertensão', 'Losartana 50mg', 'Acompanhamento mensal', 2);

INSERT INTO Exame (tipo, dataAnexo, arquivo, idConsulta)
VALUES
('Raio-X', '2025-03-12', '/exames/raiox1.png', 2);

INSERT INTO Horario_Medico (idMedico, diaSemana, horaInicio, horaFim)
VALUES
(1, 'Seg', '08:00:00', '12:00:00'),
(1, 'Qua', '13:00:00', '18:00:00'),
(2, 'Ter', '09:00:00', '15:00:00');

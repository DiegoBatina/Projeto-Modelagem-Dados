UPDATE Paciente
SET telefone = '11955554444'
WHERE idPaciente = 1;

UPDATE Consulta
SET status = 'cancelada'
WHERE idConsulta = 1;

UPDATE Prontuario
SET diagnostico = 'Hipertensão Controlada'
WHERE idProntuario = 1;

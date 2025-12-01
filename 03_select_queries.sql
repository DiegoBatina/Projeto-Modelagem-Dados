SELECT * FROM Consulta WHERE status = 'agendada';

SELECT nome, telefone 
FROM Paciente
ORDER BY nome ASC;

SELECT c.idConsulta, p.nome AS paciente, m.nome AS medico, c.data, c.horario
FROM Consulta c
JOIN Paciente p ON c.idPaciente = p.idPaciente
JOIN Medico m ON c.idMedico = m.idMedico;

SELECT p.nome, pr.diagnostico, e.tipo AS exame
FROM Prontuario pr
JOIN Consulta c ON pr.idConsulta = c.idConsulta
JOIN Paciente p ON c.idPaciente = p.idPaciente
LEFT JOIN Exame e ON e.idConsulta = c.idConsulta;

SELECT m.nome, h.diaSemana, h.horaInicio, h.horaFim
FROM Medico m
JOIN Horario_Medico h ON m.idMedico = h.idMedico;

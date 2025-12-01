Clínica Vida+ — Banco de Dados Relacional

Projeto acadêmico de modelagem, implementação e manipulação de dados utilizando SQL, desenvolvido na disciplina de Banco de Dados.

1. Visão Geral

O projeto implementa o banco de dados da Clínica Médica Vida+, com foco em:

Modelagem conceitual (DER)

Modelagem lógica

Normalização até 3FN

Criação de tabelas em SQL

Inserção, consulta, atualização e remoção de dados

Manipulação completa usando DML

Versionamento via GitHub

O objetivo é registrar pacientes, médicos, consultas, exames e prontuários de forma organizada, garantindo integridade e eficiência na recuperação de informações.

2. Estrutura do Banco
Entidades e tabelas principais
Tabela / Entidade	Descrição
Paciente	Armazena dados pessoais dos pacientes
Medico	Armazena dados e especialidades dos médicos
Consulta	Registra as consultas agendadas e realizadas
Prontuario	Registra diagnósticos, prescrições e observações médicas
Exame	Armazena resultados de exames e arquivos anexados
Horario_Medico	Agenda de horários disponíveis dos médicos

3. DER Lógico
Diagrama Entidade-Relacionamento com destaque para PK e FK.

4. Scripts SQL
O projeto inclui os seguintes scripts, prontos para execução:

Arquivo	Descrição
01_create_tables.sql	Criação de todas as tabelas com chaves primárias e estrangeiras
02_insert_data.sql	Inserção de dados iniciais nas tabelas
03_select_queries.sql	Consultas SELECT variadas com filtros, joins e ordenações
04_update_commands.sql	Atualização de registros existentes com UPDATE
05_delete_commands.sql	Remoção de registros com DELETE
5. Exemplos de Comandos SQL e Resultados Esperados
5.1 Inserção de Dados
INSERT INTO Paciente (id_paciente, nome, cpf, data_nascimento)
VALUES (1, 'João Silva', '12345678900', '1985-06-15');

5.2 Consultas SELECT
Exemplo 1: Listar todos os pacientes

SELECT id_paciente, nome, cpf FROM Paciente;

Resultado esperado:

id_paciente	nome	cpf
1	João Silva	12345678900

Exemplo 2: Consultas com JOIN

SELECT c.id_consulta, p.nome AS paciente, m.nome AS medico, c.data_hora
FROM Consulta c
JOIN Paciente p ON c.id_paciente = p.id_paciente
JOIN Medico m ON c.id_medico = m.id_medico
ORDER BY c.data_hora;

Resultado esperado:

id_consulta	paciente	medico	data_hora
1	João Silva	Dra. Maria	2025-12-02 09:00
5.3 Atualização de Dados (UPDATE)
UPDATE Paciente
SET nome = 'João da Silva'
WHERE id_paciente = 1;

Resultado esperado: Nome do paciente atualizado.

5.4 Remoção de Dados (DELETE)
DELETE FROM Consulta
WHERE id_consulta = 1;

Resultado esperado: Consulta removida do sistema.

6. Instruções de Execução
6.1 Criar Banco de Dados
CREATE DATABASE clinica_vida_plus;
USE clinica_vida_plus;

6.2 Executar Scripts na Ordem

01_create_tables.sql → Criação das tabelas

02_insert_data.sql → Inserção de dados iniciais

03_select_queries.sql → Consultas SELECT

04_update_commands.sql → Testes de UPDATE

05_delete_commands.sql → Testes de DELETE

Dica: Use MySQL Workbench ou PGAdmin para rodar os scripts.

7. Ferramentas

MySQL Workbench (recomendado)

PostgreSQL + PGAdmin (com pequenas adaptações)

GitHub para versionamento de código

8. Estrutura do Repositório
clinica-vida-plus/
│
├── README.md
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_select_queries.sql
├── 04_update_commands.sql
├── 05_delete_commands.sql
└── DER_logico.png

Projeto acadêmico desenvolvido por Diego Corrêa Batina para a disciplina de Modelagem Banco de Dados, ADS Cruseiro do Sul.

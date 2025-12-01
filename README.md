Clínica Vida+ — Banco de Dados Relacionais

Projeto acadêmico de modelagem, implementação e manipulação de dados utilizando SQL, desenvolvido na disciplina de Banco de Dados.

Visão Geral

O projeto implementa o banco de dados da Clínica Médica Vida+, com foco em:

Modelagem conceitual (DER)

Modelagem lógica

Normalização até 3FN

Criação de entidades e relacionamentos em SQL

Inserção, consulta, atualização e remoção de dados (DML)

Versionamento via GitHub

O objetivo é registrar pacientes, médicos, consultas, exames e prontuários de forma organizada, garantindo integridade e eficiência na recuperação de informações.

Estrutura do Banco
Entidades e tabelas principais
Tabela / Entidade	Descrição
Paciente	Armazena dados pessoais dos pacientes
Medico	Armazena dados e especialidades dos médicos
Consulta	Registra consultas agendadas e realizadas
Prontuario	Registra diagnósticos, prescrições e observações médicas
Exame	Armazena resultados de exames e arquivos anexados
Horario_Medico	Agenda de horários disponíveis dos médicos
Diagrama Entidade-Relacionamento

Scripts SQL
Arquivo	Descrição
01_create_tables.sql	Criação de todas as tabelas com chaves primárias e estrangeiras
02_insert_data.sql	Inserção de dados iniciais nas tabelas
03_select_queries.sql	Consultas SELECT variadas com filtros, joins e ordenações
04_update_commands.sql	Atualização de registros existentes com UPDATE
05_delete_commands.sql	Remoção de registros com DELETE
Instruções de Execução
1. Clonar o repositório
git clone https://github.com/seuusuario/clinica-vida-plus.git
cd clinica-vida-plus

2. Criar o banco de dados
CREATE DATABASE clinica_vida_plus;
USE clinica_vida_plus;

3. Executar os scripts na ordem

01_create_tables.sql → Criação das tabelas

02_insert_data.sql → Inserção dos dados iniciais

03_select_queries.sql → Consultas SELECT

04_update_commands.sql → Testes de UPDATE

05_delete_commands.sql → Testes de DELETE

Dica: use MySQL Workbench ou PGAdmin para rodar os scripts.

Exemplos de Comandos SQL e Resultados Esperados
1. Inserção de Dados (INSERT)
INSERT INTO paciente (nome, dataNascimento, cpf, telefone, email, endereco, convenio)
VALUES ('Ana Souza', '1995-03-10', '12345678901', '11988887777', 'ana@email.com', 'Rua A, 123', 'Unimed');

2. Consultas SELECT
a) Listar todos os pacientes
SELECT idPaciente, nome, cpf FROM paciente;


Resultado esperado:

idPaciente	nome	cpf
1	Ana Souza	12345678901
2	Carlos Lima	23456789012
b) Consultas com JOIN (paciente e médico)
SELECT c.idConsulta, p.nome AS paciente, m.nome AS medico, c.data, c.horario, c.status
FROM consulta c
JOIN paciente p ON c.idPaciente = p.idPaciente
JOIN medico m ON c.idMedico = m.idMedico
ORDER BY c.data, c.horario;


Resultado esperado:

idConsulta	paciente	medico	data	horario	status
1	Ana Souza	Dr. Pedro	2025-12-02	10:00:00	agendada
2	Carlos Lima	Dra. Mariana	2025-12-02	11:00:00	agendada
3. Atualização de Dados (UPDATE)
UPDATE paciente SET telefone = '11999998888' WHERE idPaciente = 1;


Resultado esperado: telefone do paciente atualizado.

4. Remoção de Dados (DELETE)
DELETE FROM exame WHERE idExame = 1;


Resultado esperado: exame removido do sistema.

Ferramentas

MySQL Workbench (recomendado)

PostgreSQL + PGAdmin (com pequenas adaptações)

GitHub para versionamento de código

Estrutura do Repositório
clinica-vida-plus/
│
├── README.md
├── 01_create_tables.sql
├── 02_insert_data.sql
├── 03_select_queries.sql
├── 04_update_commands.sql
├── 05_delete_commands.sql
└── DER_logico.png


Projeto acadêmico desenvolvido por Diego Corrêa Batina
Disciplina: Modelagem de Banco de Dados — ADS Cruzeiro do Sul

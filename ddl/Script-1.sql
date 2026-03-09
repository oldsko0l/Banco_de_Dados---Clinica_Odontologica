--script Parte 1:

create table paciente (
    id_paciente int not null,
    id_convenio int,
    nome varchar(100) not null,
    cpf char(11) not null,
    data_nasc date,
    tel varchar(15),
    email varchar(50),
    constraint pk_id_paciente primary key (id_paciente),
    constraint fk_paciente_convenio foreign key (id_convenio) references convenio(id_convenio)
)

create table funcionario (
    id_funcionario int not null,
    nome varchar(100) not null,
    cpf char(11) not null,
    cargo varchar(30),
    salario decimal(10,2),
    login varchar(20),
    senha varchar(100),
    constraint pk_id_funcionario primary key (id_funcionario)
)

create table especialidade (
    id_especialidade int not null,
    nome_especialidade varchar(50) not null,
    constraint pk_id_especialidade primary key (id_especialidade)
)

create table dentista (
    id_dentista int not null,
    id_funcionario int not null,
    id_especialidade int not null,
    cro varchar(15) not null,
    constraint pk_id_dentista primary key (id_dentista),
    constraint fk_dentista_funcionario foreign key (id_funcionario) references funcionario(id_funcionario),
    constraint fk_dentista_especialidade foreign key (id_especialidade) references especialidade(id_especialidade)
)

--scripts da terceira parte

create database clinica_odontologica;

create table procedimento (
id_procedimento int not null,
nome varchar(50) not null,
descricao_tecnica varchar(100) not null,
constraint pk_id_procedimento primary key (id_procedimento)
)

create table historico_preco (
id_historico int not null,
valor decimal(5,2) not null,
data_inicio date not null,
data_fim date,
constraint pk_id_historico_preco primary key (id_historico)
)

create table convenio (
id_convenio int not null,
nome_empresa varchar(20) not null,
cnpj varchar(14) not null,
registro_ans varchar(6) not null,
constraint pk_id_convenio primary key (id_convenio)
)

create table pagamento (
id_pagamento int not null,
valor_pago decimal(5,2) not null,
constraint pk_id_pagamento primary key (id_pagamento)
)

create table forma_pagamento (
id_forma_pagamento int not null,
descricao varchar(20),
constraint pk_id_forma_pagamento primary key (id_forma_pagamento)
)

-- Paciente (Filha de Convenio) - 30 Registros
INSERT INTO paciente (id, id_convenio, nome, cpf, data_nasc, tel, email) VALUES 
(1,1,'Paciente 1','22211100001','1990-01-01','1191','p1@m.com'),(2,2,'Paciente 2','22211100002','1990-01-01','1192','p2@m.com'),
(3,3,'Paciente 3','22211100003','1990-01-01','1193','p3@m.com'),(4,1,'Paciente 4','22211100004','1990-01-01','1194','p4@m.com'),
(5,2,'Paciente 5','22211100005','1990-01-01','1195','p5@m.com'),(6,3,'Paciente 6','22211100006','1990-01-01','1196','p6@m.com'),
(7,1,'Paciente 7','22211100007','1990-01-01','1197','p7@m.com'),(8,2,'Paciente 8','22211100008','1990-01-01','1198','p8@m.com'),
(9,3,'Paciente 9','22211100009','1990-01-01','1199','p9@m.com'),(10,1,'Paciente 10','22211100010','1990-01-01','11910','p10@m.com'),
(11,2,'Paciente 11','22211100011','1990-01-01','11911','p11@m.com'),(12,3,'Paciente 12','22211100012','1990-01-01','11912','p12@m.com'),
(13,1,'Paciente 13','22211100013','1990-01-01','11913','p13@m.com'),(14,2,'Paciente 14','22211100014','1990-01-01','11914','p14@m.com'),
(15,3,'Paciente 15','22211100015','1990-01-01','11915','p15@m.com'),(16,1,'Paciente 16','22211100016','1990-01-01','11916','p16@m.com'),
(17,2,'Paciente 17','22211100017','1990-01-01','11917','p17@m.com'),(18,3,'Paciente 18','22211100018','1990-01-01','11918','p18@m.com'),
(19,1,'Paciente 19','22211100019','1990-01-01','11919','p19@m.com'),(20,2,'Paciente 20','22211100020','1990-01-01','11920','p20@m.com'),
(21,3,'Paciente 21','22211100021','1990-01-01','11921','p21@m.com'),(22,1,'Paciente 22','22211100022','1990-01-01','11922','p22@m.com'),
(23,2,'Paciente 23','22211100023','1990-01-01','11923','p23@m.com'),(24,3,'Paciente 24','22211100024','1990-01-01','11924','p24@m.com'),
(25,1,'Paciente 25','22211100025','1990-01-01','11925','p25@m.com'),(26,2,'Paciente 26','22211100026','1990-01-01','11926','p26@m.com'),
(27,3,'Paciente 27','22211100027','1990-01-01','11927','p27@m.com'),(28,1,'Paciente 28','22211100028','1990-01-01','11928','p28@m.com'),
(29,2,'Paciente 29','22211100029','1990-01-01','11929','p29@m.com'),(30,3,'Paciente 30','22211100030','1990-01-01','11930','p30@m.com');

-- Anamnese (Filha de Paciente/Doença) - 30 Registros
INSERT INTO anamnese (id, id_paciente, id_doenca, data_registro, observacao) VALUES 
(1,1,1,'2024-01-01','-'),(2,2,2,'2024-01-01','-'),(3,3,3,'2024-01-01','-'),(4,4,1,'2024-01-01','-'),
(5,5,2,'2024-01-01','-'),(6,6,3,'2024-01-01','-'),(7,7,1,'2024-01-01','-'),(8,8,2,'2024-01-01','-'),
(9,9,3,'2024-01-01','-'),(10,10,1,'2024-01-01','-'),(11,11,2,'2024-01-01','-'),(12,12,3,'2024-01-01','-'),
(13,13,1,'2024-01-01','-'),(14,14,2,'2024-01-01','-'),(15,15,3,'2024-01-01','-'),(16,16,1,'2024-01-01','-'),
(17,17,2,'2024-01-01','-'),(18,18,3,'2024-01-01','-'),(19,19,1,'2024-01-01','-'),(20,20,2,'2024-01-01','-'),
(21,21,3,'2024-01-01','-'),(22,22,1,'2024-01-01','-'),(23,23,2,'2024-01-01','-'),(24,24,3,'2024-01-01','-'),
(25,25,1,'2024-01-01','-'),(26,26,2,'2024-01-01','-'),(27,27,3,'2024-01-01','-'),(28,28,1,'2024-01-01','-'),
(29,29,2,'2024-01-01','-'),(30,30,3,'2024-01-01','-');

-- Agendamento (Filha de Paciente/Dentista) - 30 Registros
INSERT INTO agendamento (id, id_paciente, id_dentista, data_hora, status) VALUES 
(1,1,1,'2024-04-01 08:00','OK'),(2,2,2,'2024-04-01 09:00','OK'),(3,3,3,'2024-04-01 10:00','OK'),
(4,4,4,'2024-04-01 11:00','OK'),(5,5,5,'2024-04-01 13:00','OK'),(6,6,6,'2024-04-01 14:00','OK'),
(7,7,7,'2024-04-02 08:00','OK'),(8,8,8,'2024-04-02 09:00','OK'),(9,9,9,'2024-04-02 10:00','OK'),
(10,10,10,'2024-04-02 11:00','OK'),(11,11,11,'2024-04-02 13:00','OK'),(12,12,12,'2024-04-02 14:00','OK'),
(13,13,13,'2024-04-03 08:00','OK'),(14,14,14,'2024-04-03 09:00','OK'),(15,15,15,'2024-04-03 10:00','OK'),
(16,16,16,'2024-04-03 11:00','OK'),(17,17,17,'2024-04-03 13:00','OK'),(18,18,18,'2024-04-03 14:00','OK'),
(19,19,19,'2024-04-04 08:00','OK'),(20,20,20,'2024-04-04 09:00','OK'),(21,21,21,'2024-04-04 10:00','OK'),
(22,22,22,'2024-04-04 11:00','OK'),(23,23,23,'2024-04-04 13:00','OK'),(24,24,24,'2024-04-04 14:00','OK'),
(25,25,25,'2024-04-05 08:00','OK'),(26,26,26,'2024-04-05 09:00','OK'),(27,27,27,'2024-04-05 10:00','OK'),
(28,28,28,'2024-04-05 11:00','OK'),(29,29,29,'2024-04-05 13:00','OK'),(30,30,30,'2024-04-05 14:00','OK');

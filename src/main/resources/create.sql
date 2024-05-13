INSERT INTO questions (id, description, technology) VALUES
('1f8c740f-64fc-4cfb-b936-adb7818a93ba', 'Como criar uma classe em Java?', 'JAVA'),
('c30e52df-8a19-4232-bb39-6d877653a10f', 'Explique o conceito de polimorfismo em Java', 'JAVA'),
('85c05357-8823-4f4c-ad2b-d653c78ccf47', 'Como lidar com exceções em Java?', 'JAVA');

INSERT INTO alternatives (id, question_id, is_correct, description) VALUES
('73afec3a-820d-461d-b7d5-78dd6ee3b528','1f8c740f-64fc-4cfb-b936-adb7818a93ba',true, 'Usando a palavra-chave "class"'),
('402ab32f-1edc-49b4-b5d7-7f56893f2806','1f8c740f-64fc-4cfb-b936-adb7818a93ba',false, 'Definindo uma interface em Java'),
('8bc17c48-45c3-4af6-a341-aca7fde306a2','1f8c740f-64fc-4cfb-b936-adb7818a93ba',false, 'Utilizando métodos estáticos'),
('f48527ea-78d9-4bef-93cd-329566676b1a','1f8c740f-64fc-4cfb-b936-adb7818a93ba',false, 'Criando um construtor padrão');

INSERT INTO alternatives (id, question_id, is_correct, description) VALUES
('57478eb6-76d4-40b3-8e29-c2f813875c8b','c30e52df-8a19-4232-bb39-6d877653a10f',false, 'Herança simples'),
('d9a6b61d-70fb-45ae-b1b0-f541e3340362','c30e52df-8a19-4232-bb39-6d877653a10f',false, 'Encapsulamento em JAVA'),
('2041e488-e8b6-4bb6-af71-6e24ccfb6248','c30e52df-8a19-4232-bb39-6d877653a10f',false, 'Sobrecarga de métodos'),
('fcfc3f42-45f4-4dde-856d-56347310c511','c30e52df-8a19-4232-bb39-6d877653a10f',true, 'Capacidade de um objeto de assumir várias formas');

INSERT INTO alternatives (id, question_id, is_correct, description) VALUES
('bf57ef53-699e-4af6-9654-5363f3fbd7ab','85c05357-8823-4f4c-ad2b-d653c78ccf47',false, 'Ignorando a exceção'),
('c72dd026-8f93-4fc3-aa3c-6d41897f19df','85c05357-8823-4f4c-ad2b-d653c78ccf47',true, 'Utilizando blocos try-catch'),
('e0f5bdf1-a02b-45dd-9faf-b09aca18ed0a','85c05357-8823-4f4c-ad2b-d653c78ccf47',false, 'Declarando uma exceção sem tratamento'),
('38622f14-1468-4202-a9c8-b57250a0f9c2','85c05357-8823-4f4c-ad2b-d653c78ccf47',false, 'Usando a palavra chave "finally');

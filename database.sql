CREATE DATABASE centre_informatique_togo;

CREATE TABLE clients (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    telephone VARCHAR(30),
    ville VARCHAR(50),
    type_client VARCHAR(30)
);

CREATE TABLE techniciens (
    id_technicien SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    specialite VARCHAR(100),
    salaire_mensuel NUMERIC(10,2)
);

CREATE TABLE services (
    id_service SERIAL PRIMARY KEY,
    libelle VARCHAR(100),
    prix NUMERIC(10,2)
);

CREATE TABLE interventions (
    id_intervention SERIAL PRIMARY KEY,
    id_client INT REFERENCES clients(id_client),
    id_technicien INT REFERENCES techniciens(id_technicien),
    id_service INT REFERENCES services(id_service),
    date_intervention DATE,
    duree_heures INT,
    montant NUMERIC(10,2)
);

INSERT INTO clients (nom, telephone, ville, type_client) VALUES
('Cyber Africa', '90011223', 'Lomé', 'Entreprise'),
('ETS Kossi', '91122334', 'Lomé', 'PME'),
('Startup Nova', '92233445', 'Lomé', 'Startup'),
('Université ESGIS', '93344556', 'Lomé', 'Institution'),
('Clinique Bon Secours', '94455667', 'Lomé', 'Entreprise'),
('Boutique IT Plus', '95566778', 'Kara', 'PME'),
('Hotel Sarakawa', '96677889', 'Lomé', 'Entreprise'),
('ONG Espoir', '97788990', 'Atakpamé', 'ONG'),
('Mairie de Sokodé', '98899001', 'Sokodé', 'Institution'),
('Cyber NetPro', '99900112', 'Lomé', 'PME'),
('Ecole La Source', '90012345', 'Lomé', 'Institution'),
('ETS Yao', '90123456', 'Kpalimé', 'PME'),
('Startup Digit', '90234567', 'Lomé', 'Startup'),
('Pharmacie Centrale', '90345678', 'Lomé', 'Entreprise'),
('Cyber Zone Plus', '90456789', 'Kara', 'PME');

INSERT INTO techniciens (nom, specialite, salaire_mensuel) VALUES
('Mensah Paul', 'Réseaux', 180000),
('Kossi Jean', 'Maintenance PC', 150000),
('Afi Dede', 'Développement', 220000),
('Yao Komlan', 'Sécurité informatique', 250000),
('Amouzou Eric', 'Systèmes', 200000),
('Adjovi Nina', 'Support IT', 140000),
('Tchalla Karim', 'Réseaux', 190000),
('Sename Ruth', 'Maintenance PC', 160000),
('Kodjo Alain', 'Cloud', 230000),
('Essowè Marc', 'Développement', 210000);

INSERT INTO services (libelle, prix) VALUES
('Installation réseau', 50000),
('Maintenance ordinateur', 20000),
('Développement logiciel', 150000),
('Sécurisation système', 80000),
('Configuration serveur', 120000),
('Audit informatique', 70000),
('Sauvegarde données', 40000),
('Formation utilisateurs', 60000);

INSERT INTO interventions (id_client, id_technicien, id_service, date_intervention, duree_heures, montant) VALUES
(1,1,1,'2025-01-05',4,50000),
(2,2,2,'2025-01-06',2,20000),
(3,3,3,'2025-01-10',8,150000),
(4,4,4,'2025-01-12',5,80000),
(5,5,5,'2025-01-15',6,120000),
(6,6,2,'2025-01-18',3,20000),
(7,7,1,'2025-01-20',4,50000),
(8,8,6,'2025-01-22',3,70000),
(9,9,5,'2025-01-25',6,120000),
(10,10,3,'2025-01-26',7,150000),
(11,1,7,'2025-02-01',2,40000),
(12,2,2,'2025-02-03',2,20000),
(13,3,3,'2025-02-05',9,150000),
(14,4,4,'2025-02-08',4,80000),
(15,5,6,'2025-02-10',3,70000),
(1,6,2,'2025-02-12',2,20000),
(2,7,1,'2025-02-15',4,50000),
(3,8,7,'2025-02-18',3,40000),
(4,9,5,'2025-02-20',6,120000),
(5,10,3,'2025-02-22',8,150000);



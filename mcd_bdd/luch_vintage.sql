#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: produit
#------------------------------------------------------------

CREATE TABLE produit(
        id_produit          Int  Auto_increment  NOT NULL COMMENT "id_produit (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        nom_produit         Varchar (150) NOT NULL COMMENT "nom_produit (VARCHAR(150), NOT NULL)"  ,
        prix_produit        Decimal (10,2) NOT NULL COMMENT "prix (DECIMAL(10, 2), NOT NULL)"  ,
        stock_produit       Integer NOT NULL COMMENT "stock (INT, NOT NULL)"  ,
        taille_produit      Varchar (10) NOT NULL COMMENT "taille (VARCHAR(10), NOT NULL)"  ,
        couleur_produit     Varchar (50) NOT NULL COMMENT "couleur (VARCHAR(50), NOT NULL)"  ,
        detail_produit      Varchar (50) ,
        description_produit Text COMMENT "description (TEXT, NULL)" 
	,CONSTRAINT produit_PK PRIMARY KEY (id_produit)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categorie
#------------------------------------------------------------

CREATE TABLE categorie(
        id_categorie        Int  Auto_increment  NOT NULL COMMENT "id_categorie (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        id_parent           Integer NOT NULL COMMENT "id de la grande categerorie id categorie 1 = pantalon ( parent de panton) 2 = jean(enfant pantalon parent de baggy) 3 = baggy ( enfant de jean )"  ,
        nom_categorie       Varchar (100) NOT NULL COMMENT "nom_categorie (VARCHAR(100), NOT NULL)"  ,
        url_image_categorie Varchar (255) NOT NULL COMMENT "VARCHAR(255) NOT NULL,URL ou chemin de l'image" 
	,CONSTRAINT categorie_PK PRIMARY KEY (id_categorie)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: service_livraison
#------------------------------------------------------------

CREATE TABLE service_livraison(
        id_service       Int  Auto_increment  NOT NULL COMMENT "id_service (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        nom_service      Varchar (100) NOT NULL COMMENT "nom_service (VARCHAR(100), NOT NULL)"  ,
        site_web_service Varchar (255) COMMENT "site_web (VARCHAR(255), NULL)"  ,
        type_service     Varchar (255) NOT NULL COMMENT "type_service (VARCHAR(50), NOT NULL)" 
	,CONSTRAINT service_livraison_PK PRIMARY KEY (id_service)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: promotion
#------------------------------------------------------------

CREATE TABLE promotion(
        id_promotion            Int  Auto_increment  NOT NULL COMMENT "id_promotion (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        code_promo_promotion    Varchar (50) NOT NULL COMMENT "code_promo (VARCHAR(50), UNIQUE, NOT NULL)"  ,
        description_promotion   Text COMMENT "description (TEXT, NULL)"  ,
        valeur_remise_promotion Decimal (10,2) NOT NULL COMMENT "valeur_remise (DECIMAL(10, 2), NOT NULL)"  ,
        date_debut_promotion    Datetime NOT NULL COMMENT "date_debut (DATETIME, NOT NULL)"  ,
        date_fin_promotion      Datetime NOT NULL COMMENT "date_fin (DATETIME, NOT NULL)" 
	,CONSTRAINT promotion_PK PRIMARY KEY (id_promotion)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: image_produit
#------------------------------------------------------------

CREATE TABLE image_produit(
        id_image          Int  Auto_increment  NOT NULL COMMENT "INT PRIMARY KEY AUTO_INCREMENT,Identifiant unique de l'image"  ,
        nom_image_produit Varchar (255) COMMENT "image (VARCHAR(255), NULL)"  ,
        url_image_produit Varchar (255) NOT NULL COMMENT "VARCHAR(255) NOT NULL,URL ou chemin de l'image"  ,
        -- id_produit        Int NOT NULL COMMENT "id_produit (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT image_produit_PK PRIMARY KEY (id_image)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Role
#------------------------------------------------------------

CREATE TABLE Role(
        id_role  Int  Auto_increment  NOT NULL ,
        nom_role Varchar (50) NOT NULL
	,CONSTRAINT Role_PK PRIMARY KEY (id_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: utilisateur
#------------------------------------------------------------

CREATE TABLE utilisateur(
        id_utilisateur           Int  Auto_increment  NOT NULL COMMENT "id_client (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        nom_utilisateur          Varchar (100) NOT NULL COMMENT "nom_client (VARCHAR(100), NOT NULL)"  ,
        prenom_utilisateur       Varchar (100) NOT NULL COMMENT "prénom (VARCHAR(100), NOT NULL)"  ,
        email_utilisateur        Varchar (150) NOT NULL COMMENT "email (VARCHAR(150), UNIQUE, NOT NULL)"  ,
        mot_de_passe_utilisateur Varchar (255) NOT NULL COMMENT "mot_de_passe (VARCHAR(255), NOT NULL)"  ,
        telephone_utilisateur    Varchar (20) COMMENT "téléphone (VARCHAR(20), NULL)"  ,
        -- adresse_utilisateur      Varchar (255) COMMENT "adresse (VARCHAR(255), NULL)"  ,
        date_inscription_client  Datetime NOT NULL COMMENT "date_inscription (DATETIME, NOT NULL)"  ,
        -- id_role                  Int NOT NULL
	,CONSTRAINT utilisateur_PK PRIMARY KEY (id_utilisateur)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: statut_commande
#------------------------------------------------------------

CREATE TABLE statut_commande(
        id_statut_commande Int  Auto_increment  NOT NULL ,
        statut_commande    Varchar (50) NOT NULL
	,CONSTRAINT statut_commande_PK PRIMARY KEY (id_statut_commande)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: adresses
#------------------------------------------------------------

CREATE TABLE adresses(
        id_adresse                  Int  Auto_increment  NOT NULL ,
        nom                         Varchar (50) NOT NULL ,
        prenom                      Varchar (50) NOT NULL ,
        adresse                     Varchar (50) NOT NULL ,
        adresse_complement          Varchar (50) NOT NULL ,
        code_postale                Varchar (50) NOT NULL ,
        ville                       Varchar (50) NOT NULL ,
        pays                        Varchar (50) NOT NULL ,
        telephone                   Integer NOT NULL ,
        email                       Varchar (50) NOT NULL ,
        informations_suplementaires Text NOT NULL ,
        -- id_utilisateur              Int NOT NULL COMMENT "id_client (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT adresses_PK PRIMARY KEY (id_adresse)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: categorise
#------------------------------------------------------------

CREATE TABLE categorise(
        -- id_categorie Int NOT NULL COMMENT "id_categorie (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_produit   Int NOT NULL COMMENT "id_produit (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT categorise_PK PRIMARY KEY (id_categorie,id_produit)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: commande
#------------------------------------------------------------

CREATE TABLE commande(
        id_commande        Int  Auto_increment  NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        date_commande      Datetime NOT NULL COMMENT "date_commande (DATETIME, NOT NULL)"  ,
        total_commande     Decimal (10,2) NOT NULL COMMENT "total_commande (DECIMAL(10, 2), NOT NULL)"  ,
        -- id_utilisateur     Int NOT NULL COMMENT "id_client (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_paiement        Int NOT NULL COMMENT "id_paiement (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_facture         Int NOT NULL ,
        -- id_statut_commande Int NOT NULL
	,CONSTRAINT commande_PK PRIMARY KEY (id_commande)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: paiement
#------------------------------------------------------------

CREATE TABLE paiement(
        id_paiement      Int  Auto_increment  NOT NULL COMMENT "id_paiement (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        date_paiement    Datetime NOT NULL COMMENT "date_paiement (DATETIME, NOT NULL)"  ,
        montant_paiement Decimal (10,2) NOT NULL COMMENT "montant (DECIMAL(10, 2), NOT NULL)"  ,
        moyen_paiement   Varchar (50) NOT NULL COMMENT "moyen_paiement (VARCHAR(50), NOT NULL)"  ,
        -- id_commande      Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_livraison     Int NOT NULL COMMENT "id_livraison (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT paiement_PK PRIMARY KEY (id_paiement)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: avis_commande
#------------------------------------------------------------

CREATE TABLE avis_commande(
        id_avis                Int  Auto_increment  NOT NULL COMMENT "id_avis (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        note_avis              Integer NOT NULL COMMENT "note (INT, NOT NULL)"  ,
        commentaire_avis       Text NOT NULL COMMENT "commentaire (TEXT, NULL)"  ,
        date_avis              Datetime NOT NULL COMMENT "date_avis (DATETIME, NOT NULL)"  ,
        statut_validation_avis Varchar (10) NOT NULL COMMENT "statut_validation (VARCHAR(50), NOT NULL, DEFAULT 'En attente') : Statut de validation de l'avis (validé, rejeté, en attente)"  ,
        -- id_commande            Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT avis_commande_PK PRIMARY KEY (id_avis)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: livraison

#------------------------------------------------------------

CREATE TABLE livraison(
        id_livraison              Int  Auto_increment  NOT NULL COMMENT "id_livraison (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        date_expedition_livraison Datetime NOT NULL COMMENT "date_expedition (DATETIME, NOT NULL)"  ,
        date_estimee_livraison    Datetime NOT NULL COMMENT "date_estimee_livraison (DATETIME, NOT NULL)"  ,
        id_transporteur           Varchar (50) NOT NULL ,
        -- id_paiement               Int NOT NULL COMMENT "id_paiement (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_service                Int NOT NULL COMMENT "id_service (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_adresse                Int NOT NULL
	,CONSTRAINT livraison_PK PRIMARY KEY (id_livraison)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: notification_email
#------------------------------------------------------------

CREATE TABLE notification_email(
        id_notification_email          Int  Auto_increment  NOT NULL COMMENT "id_notification (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        type_notification_email        Varchar (50) NOT NULL COMMENT "type_notification (VARCHAR(50), NOT NULL)"  ,
        sujet_notification_email       Varchar (255) NOT NULL COMMENT "sujet (VARCHAR(255), NOT NULL)"  ,
        contenu_notification_email     Text NOT NULL COMMENT "contenu (TEXT, NOT NULL)"  ,
        date_envoi_notification_email  Datetime NOT NULL COMMENT "date_envoi (DATETIME, NOT NULL)"  ,
        -- id_commande                    Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT notification_email_PK PRIMARY KEY (id_notification_email)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: facture
#------------------------------------------------------------

CREATE TABLE facture(
        id_facture          Int  Auto_increment  NOT NULL ,
        date_facture        Datetime NOT NULL ,
        montant_ttc_facture Decimal (10,2) NOT NULL ,
        montant_ht_facture  Decimal (10,2) NOT NULL ,
        montant_tva_facture Decimal (10,2) NOT NULL ,
        -- id_commande         Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT facture_PK PRIMARY KEY (id_facture)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: produit_commande
#------------------------------------------------------------

CREATE TABLE produit_commande(
        id_produit_commande       Int  Auto_increment  NOT NULL ,
        quantite_produit_commande Integer NOT NULL ,
        statut_retour_commande    Varchar (50) ,
        raison_retour_commande    Text ,
        date_retour_commande      Datetime COMMENT "date_retour (DATETIME, NOT NULL)"  ,
        quantite_retour_commande  Integer ,
        -- id_commande               Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        -- id_produit                Int NOT NULL COMMENT "id_produit (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT produit_commande_PK PRIMARY KEY (id_produit_commande)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Avoir2
#------------------------------------------------------------

CREATE TABLE Avoir2(
        id_commande  Int NOT NULL COMMENT "id_commande (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)"  ,
        id_promotion Int NOT NULL COMMENT "id_promotion (INT, PRIMARY KEY, AUTO_INCREMENT, NOT NULL)" 
	,CONSTRAINT Avoir2_PK PRIMARY KEY (id_commande,id_promotion)
)ENGINE=InnoDB;




ALTER TABLE image_produit
	ADD CONSTRAINT image_produit_produit0_FK
	FOREIGN KEY (id_produit)
	REFERENCES produit(id_produit);

ALTER TABLE utilisateur
	ADD CONSTRAINT utilisateur_Role0_FK
	FOREIGN KEY (id_role)
	REFERENCES Role(id_role);

ALTER TABLE adresses
	ADD CONSTRAINT adresses_utilisateur0_FK
	FOREIGN KEY (id_utilisateur)
	REFERENCES utilisateur(id_utilisateur);

ALTER TABLE categorise
	ADD CONSTRAINT categorise_categorie0_FK
	FOREIGN KEY (id_categorie)
	REFERENCES categorie(id_categorie);

ALTER TABLE categorise
	ADD CONSTRAINT categorise_produit1_FK
	FOREIGN KEY (id_produit)
	REFERENCES produit(id_produit);

ALTER TABLE commande
	ADD CONSTRAINT commande_utilisateur0_FK
	FOREIGN KEY (id_utilisateur)
	REFERENCES utilisateur(id_utilisateur);

ALTER TABLE commande
	ADD CONSTRAINT commande_paiement1_FK
	FOREIGN KEY (id_paiement)
	REFERENCES paiement(id_paiement);

ALTER TABLE commande
	ADD CONSTRAINT commande_facture2_FK
	FOREIGN KEY (id_facture)
	REFERENCES facture(id_facture);

ALTER TABLE commande
	ADD CONSTRAINT commande_statut_commande3_FK
	FOREIGN KEY (id_statut_commande)
	REFERENCES statut_commande(id_statut_commande);

ALTER TABLE commande 
	ADD CONSTRAINT commande_paiement0_AK 
	UNIQUE (id_paiement);

ALTER TABLE commande 
	ADD CONSTRAINT commande_facture1_AK 
	UNIQUE (id_facture);

ALTER TABLE paiement
	ADD CONSTRAINT paiement_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE paiement
	ADD CONSTRAINT paiement_livraison1_FK
	FOREIGN KEY (id_livraison)
	REFERENCES livraison(id_livraison);

ALTER TABLE paiement 
	ADD CONSTRAINT paiement_commande0_AK 
	UNIQUE (id_commande);

ALTER TABLE paiement 
	ADD CONSTRAINT paiement_livraison1_AK 
	UNIQUE (id_livraison);

ALTER TABLE avis_commande
	ADD CONSTRAINT avis_commande_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE livraison
	ADD CONSTRAINT livraison_paiement0_FK
	FOREIGN KEY (id_paiement)
	REFERENCES paiement(id_paiement);

ALTER TABLE livraison
	ADD CONSTRAINT livraison_service_livraison1_FK
	FOREIGN KEY (id_service)
	REFERENCES service_livraison(id_service);

ALTER TABLE livraison
	ADD CONSTRAINT livraison_adresses2_FK
	FOREIGN KEY (id_adresse)
	REFERENCES adresses(id_adresse);

ALTER TABLE livraison 
	ADD CONSTRAINT livraison_paiement0_AK 
	UNIQUE (id_paiement);

ALTER TABLE notification_email
	ADD CONSTRAINT notification_email_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE facture
	ADD CONSTRAINT facture_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE facture 
	ADD CONSTRAINT facture_commande0_AK 
	UNIQUE (id_commande);

ALTER TABLE produit_commande
	ADD CONSTRAINT produit_commande_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE produit_commande
	ADD CONSTRAINT produit_commande_produit1_FK
	FOREIGN KEY (id_produit)
	REFERENCES produit(id_produit);

ALTER TABLE Avoir2
	ADD CONSTRAINT Avoir2_commande0_FK
	FOREIGN KEY (id_commande)
	REFERENCES commande(id_commande);

ALTER TABLE Avoir2
	ADD CONSTRAINT Avoir2_promotion1_FK
	FOREIGN KEY (id_promotion)
	REFERENCES promotion(id_promotion);

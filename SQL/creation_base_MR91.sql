DROP TABLE IF EXISTS Gère;
DROP TABLE IF EXISTS fournit;
DROP TABLE IF EXISTS Achète;
DROP TABLE IF EXISTS commercialise;
DROP TABLE IF EXISTS se_déroule;
DROP TABLE IF EXISTS travaille_sur;
DROP TABLE IF EXISTS vendu;
DROP TABLE IF EXISTS contient;
DROP TABLE IF EXISTS EMPLOYE;
DROP TABLE IF EXISTS VENTE;
DROP TABLE IF EXISTS PRODUIT;
DROP TABLE IF EXISTS COMMANDE;
DROP TABLE IF EXISTS FOURNISSEUR;
DROP TABLE IF EXISTS JOUR;
DROP TABLE IF EXISTS MARCHE;
DROP TABLE IF EXISTS CLIENT;
DROP TABLE IF EXISTS SAISON;
DROP TABLE IF EXISTS FACTURE;

CREATE TABLE FACTURE(
   NumFacture VARCHAR(50),
   DateFacture VARCHAR(50),
   Sous_total VARCHAR(50),
   Montant_Total VARCHAR(50),
   PRIMARY KEY(NumFacture)
);

CREATE TABLE SAISON(
   NumSaison VARCHAR(50),
   NomSaison VARCHAR(50),
   PRIMARY KEY(NumSaison)
);

CREATE TABLE CLIENT(
   NumClient VARCHAR(50),
   TrancheAge VARCHAR(50),
   FrequenceAchat VARCHAR(50),
   PRIMARY KEY(NumClient)
);

CREATE TABLE MARCHE(
   id_marche VARCHAR(50),
   nomMarche VARCHAR(50),
   AdrMarche VARCHAR(50),
   Ville VARCHAR(50),
   PRIMARY KEY(id_marche)
);

CREATE TABLE JOUR(
   NumJour VARCHAR(50),
   NomJour VARCHAR(50),
   PRIMARY KEY(NumJour)
);

CREATE TABLE FOURNISSEUR(
   IdFournisseur VARCHAR(50),
   NomFournisseur VARCHAR(50),
   TelFournisseur VARCHAR(50),
   AdrFournisseur VARCHAR(50),
   PRIMARY KEY(IdFournisseur)
);

CREATE TABLE COMMANDE(
   NumCommande VARCHAR(50),
   DescrCommande VARCHAR(50),
   PrixCommande VARCHAR(50),
   NumFacture VARCHAR(50) NOT NULL,
   PRIMARY KEY(NumCommande),
   FOREIGN KEY(NumFacture) REFERENCES FACTURE(NumFacture)
);

CREATE TABLE PRODUIT(
   NumProduit VARCHAR(50),
   NomProduit VARCHAR(50),
   Catégorie VARCHAR(50),
   Prix VARCHAR(50),
   Quantité_Stock VARCHAR(50),
   NumSaison VARCHAR(50) NOT NULL,
   PRIMARY KEY(NumProduit),
   FOREIGN KEY(NumSaison) REFERENCES SAISON(NumSaison)
);

CREATE TABLE VENTE(
   NumVente VARCHAR(50),
   Date_Vente VARCHAR(50),
   NbreCommande VARCHAR(50),
   Total_Prix VARCHAR(50),
   id_marche VARCHAR(50) NOT NULL,
   NumCommande VARCHAR(50) NOT NULL,
   PRIMARY KEY(NumVente),
   FOREIGN KEY(id_marche) REFERENCES MARCHE(id_marche),
   FOREIGN KEY(NumCommande) REFERENCES COMMANDE(NumCommande)
);

CREATE TABLE EMPLOYE(
   NumEmploye VARCHAR(50),
   NomEmploye VARCHAR(50),
   PrenomEmploye VARCHAR(50),
   poste VARCHAR(50),
   NumVente VARCHAR(50) NOT NULL,
   PRIMARY KEY(NumEmploye),
   FOREIGN KEY(NumVente) REFERENCES VENTE(NumVente)
);

CREATE TABLE contient(
   NumProduit VARCHAR(50),
   NumCommande VARCHAR(50),
   PRIMARY KEY(NumProduit, NumCommande),
   FOREIGN KEY(NumProduit) REFERENCES PRODUIT(NumProduit),
   FOREIGN KEY(NumCommande) REFERENCES COMMANDE(NumCommande)
);

CREATE TABLE vendu(
   NumProduit VARCHAR(50),
   NumVente VARCHAR(50),
   PRIMARY KEY(NumProduit, NumVente),
   FOREIGN KEY(NumProduit) REFERENCES PRODUIT(NumProduit),
   FOREIGN KEY(NumVente) REFERENCES VENTE(NumVente)
);

CREATE TABLE travaille_sur(
   id_marche VARCHAR(50),
   NumEmploye VARCHAR(50),
   PRIMARY KEY(id_marche, NumEmploye),
   FOREIGN KEY(id_marche) REFERENCES MARCHE(id_marche),
   FOREIGN KEY(NumEmploye) REFERENCES EMPLOYE(NumEmploye)
);

CREATE TABLE se_déroule(
   id_marche VARCHAR(50),
   NumJour VARCHAR(50),
   PRIMARY KEY(id_marche, NumJour),
   FOREIGN KEY(id_marche) REFERENCES MARCHE(id_marche),
   FOREIGN KEY(NumJour) REFERENCES JOUR(NumJour)
);

CREATE TABLE commercialise(
   NumProduit VARCHAR(50),
   id_marche VARCHAR(50),
   PRIMARY KEY(NumProduit, id_marche),
   FOREIGN KEY(NumProduit) REFERENCES PRODUIT(NumProduit),
   FOREIGN KEY(id_marche) REFERENCES MARCHE(id_marche)
);

CREATE TABLE Achète(
   NumProduit VARCHAR(50),
   NumClient VARCHAR(50),
   PRIMARY KEY(NumProduit, NumClient),
   FOREIGN KEY(NumProduit) REFERENCES PRODUIT(NumProduit),
   FOREIGN KEY(NumClient) REFERENCES CLIENT(NumClient)
);

CREATE TABLE fournit(
   NumProduit VARCHAR(50),
   IdFournisseur VARCHAR(50),
   PRIMARY KEY(NumProduit, IdFournisseur),
   FOREIGN KEY(NumProduit) REFERENCES PRODUIT(NumProduit),
   FOREIGN KEY(IdFournisseur) REFERENCES FOURNISSEUR(IdFournisseur)
);

CREATE TABLE Gère(
   NumEmploye_gère VARCHAR(50),
   NumEmploye_est_géré VARCHAR(50),
   Id_Gérant VARCHAR(50),
   PRIMARY KEY(NumEmploye_gère, NumEmploye_est_géré),
   FOREIGN KEY(NumEmploye_gère) REFERENCES EMPLOYE(NumEmploye),
   FOREIGN KEY(NumEmploye_est_géré) REFERENCES EMPLOYE(NumEmploye)
);





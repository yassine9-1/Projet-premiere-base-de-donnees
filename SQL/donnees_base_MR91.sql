INSERT INTO `FACTURE`
VALUES
  (1,"2025-06-15","€34","€53"),
  (2,"2025-06-17","€24","€66"),
  (3,"2024-06-01","€39","€52"),
  (4,"2024-03-17","€66","€87"),
  (5,"2025-11-19","€34","€42");
  
INSERT INTO `FACTURE`
VALUES
  (6,"2024-12-11","€22","€57"),
  (7,"2024-03-02","€44","€61"),
  (8,"2024-01-06","€54","€93"),
  (9,"2024-08-07","€61","€98"),
  (10,"2024-05-22","€58","€85"),
  (11,"2024-02-24","€30","€37"),
  (12,"2024-06-12","€38","€60"),
  (13,"2025-05-29","€65","€90"),
  (14,"2024-10-11","€83","€99"),
  (15,"2024-11-06","€59","€69");
  
INSERT INTO `SAISON`
VALUES
  (1,"Hiver"),
  (2,"Printemps"),
  (3,"Eté"),
  (4,"Automne");
  
INSERT INTO `CLIENT`
VALUES  
  (1,"18-25 ans","1 semaine sur 3"),
  (2,"26-40 ans","1 semaine sur 2"),
  (3,"40 ans et plus","1 fois par semaine");
  
INSERT INTO `MARCHE`
VALUES
  (1,"Marché de Malakoff","PI. du 11 novembre","Malakoff"),
  (2,"Marché de Massy","1 PI. de Narbonne","Massy"),
  (3,"Marché des Ulis","Place du marché","Les Ulis");
  
INSERT INTO `JOUR`
VALUES
  (1,"Lundi"),
  (2,"Mardi"),
  (3,"Mercredi"),
  (4,"Jeudi"),
  (5,"Vendredi"),
  (6,"Samedi"),
  (7,"Dimanche");
  
INSERT INTO `FOURNISSEUR`
VALUES
  (1,"LES JARDINS D'ALBERT PÈRE ET FILS","0149780773","Batiment A3,RUE D'ANGERS,94550,Chevilly-Larue"),
  (2,"DESMETTRE BIO","0185784808","Batiment D3,RUE DE CARPENTRAS,94550,Chevilly-Larue"),
  (3,"PARIS HERBES SAS","0148533258","Batiment A2,RUE D'AGEN,94550,Chevilly-Larue"),
  (4,"SAISOF","0169838910","Batiment B2,RUE D'AVIGNON,94550,Chevilly-Larue"),
  (5,"DESMETTRE PIERRE ET FILS SAS ETS","0156706266","Batiment B4B,COURS D'ALSACE,94550,Chevilly-Larue");
  
INSERT INTO `COMMANDE`
VALUES
  (1,"Légumes : 1kg d'haricots, 1kg de pommes de terres","€14",1),
  (2,"Fruits : 4 tomates, 5 oranges, 4 avocats","€20",1);
  
INSERT INTO `PRODUIT`
VALUES
  (1,"Orange","Fruit",1,200,1);
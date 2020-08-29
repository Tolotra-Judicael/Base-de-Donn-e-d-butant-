BEGIN TRANSACTION;
#création de la table "personnes" avec les colonnes
CREATE TABLE IF NOT EXISTS "personnes" (
	"id"	INTEGER,
	"nom"	TEXT,
	"prenom"	TEXT,
	"age"	NUMERIC,
	"taille"	NUMERIC,
	"poids"	NUMERIC
);
#insertion de la valeur de chaque ligne
INSERT INTO "personnes" ("id","nom","prenom","age","taille","poids") VALUES (1,'Rakoto','Be Nify',10,1.5,70),
 (2,'Lava','Rapeto',25,2,30),
 (3,'Ba','Lita',7,1,20.5),
 (4,'Kiala','Manjakely',100,1.68,45.7),
 (5,'Kiala','Pota',37,0.8,50);
COMMIT;
#ajout d'une nouvelle colonne dans la table "personnes"
#attribution de valeur pour les lignes vides nouvellement créées
ALTER TABLE personnes
ADD COLUMN "couleur_préferée" TEXT;
UPDATE personnes 
SET couleur_préferée = 'rouge'
WHERE id = 1;
UPDATE personnes 
SET couleur_préferée = 'vert'
WHERE id = 2;
UPDATE personnes 
SET couleur_préferée = 'jaune'
WHERE id = 3;
UPDATE personnes 
SET couleur_préferée = 'violet'
WHERE id = 4;
UPDATE personnes 
SET couleur_préferée = 'grise'
WHERE id = 5;
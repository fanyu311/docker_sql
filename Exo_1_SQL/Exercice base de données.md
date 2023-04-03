# Exercice base de données

Pour cette exercice, vous devez avoir importé la base de données db_exo.sql qui doit être fournit avec l'exercice.

### Les tables :

Vous y retrouverez plusieurs tables et informations :

__Table film__ :

| **Nom du champ** | **Type du champ** | **Description du champ**             |
| ---------------- | ----------------- | ------------------------------------ |
| *nom*            | VARCHAR(255)      | le nom du film                       |
| *date_de_sortie* | DATE              | la date de sortie du film            |
| *synopsis*       | TEXT              | la description du scénario du film   |
| *langue*         | VARCHAR(255)      | la langue principale du film         |
| *budget*         | INTEGER           | le budget de production du film      |
| note_id          | INTEGER           | l'id de l'objet note associé au film |

**Table note** :

| **Nom du champ** | **Type du champ** | **Description du champ** |
| ---------------- | ----------------- | ------------------------ |
| *note*           | INTEGER           | la note sur 5            |

**Table pays de sortie** :

| **Nom du champ** | **Type du champ** | **Description du champ** |
| ---------------- | ----------------- | ------------------------ |
| *nom*            | VARCHAR(255)      | le nom du pays           |

**Il existe une relation un à plusieurs entre “film” et “note”, et une relation plusieurs à plusieurs entre “film” et “pays_de_sortie”.**



### L'exercice :

#### Question 1

**Quelle est la commande qui permet de récupérer uniquement le film Skyfall ?**



#### Question 2 :

**Quels sont les films dont le budget est supérieur ou égal à 100 000 000 $ ?**



#### Question 3 :

**Quels sont les films dont le synopsis contient le mot “histoire” ?**



#### Question 4

**Combien y-a-t-il de films ?**



#### Question 5

**Quels sont les mots clés permettant d’effectuer des opérations arithmétiques sur des requêtes SQL ?**



#### Question 6

**Combien de films ont une note inférieure à 4 ?**



#### Question 7

**Qu’est-ce qu’une table de liaison ?**



#### Question 8

**Sélectionnez les bonnes associations de films avec leurs pays de sortie :**

- Skyfall en France, Angleterre et USA.
- Titanic en France, USA et Allemagne.
- La La Land aux USA uniquement.
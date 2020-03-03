# GallusPugnans

## Le projet
Ce dépôt concerne l'atelier de traduction pour le [Groupe de Théâtre antique](http://www.unine.ch/gta/) de l'Université de Neuchâtel (CH) qui aura lieu durant le semestre de printemps 2020.

Chères et chers étudiant·e·s, vous êtes invités à faire évoluer les différents fichiers ci-dessous. Lorsque vous apportez des corrections aux fichiers .xml, merci de le signaler dans le `<revisionDesc>` du teiHeader (l. 73): 

        <revisionDesc>
            <change type="creation" resp="#EP"><date when="2020-02-17"/>Création du fichier: partie dialoguée p. 36-39 de la source.</change>
        </revisionDesc> 

En modifiant les informations comme suit:

`<change type="update" resp="[votrenom]"><date when="2020-02-17"/>[type de modification apportée, par exemple faute de frappe, ponctuation, encodage]</change>`

L'imprimé numérisé se trouve [ici](https://books.google.ch/books?id=8WKhxNJ_2JUC&dq=gallus+pugnans&hl=fr&source=gbs_navlinks_s)


## Types de fichiers
Sur ce dépot vous trouverez des fichiers de différents types qui forment l'architecture des éditions monolingues et bilingues. Le fichier du XML-TEI latin est le document pivot à partir duquel nous allons générer les 

* Texte latin: .xml
* Fichiers de transformation vers latex et html: .xslt
* Feuilles de style: .css
* Fichier latex issus de la transformation du fichierlatin.xml grâce à la TEI_to_latexbilingue.xslt: .tex

Des versions PDF du texte latin et de la progression bilingue seront placés sur Moodle.

## Que faire avec les fichiers qui se trouvent sur GitHub?
Tout dépend de vos compétences et du pilier dans lequel vous validez cet enseignement: 
* Vous pouvez modifier les fichiers pour les mettre à jour, corriger les erreurs philologiques ou de codage.
* Vous pouvez télécharger les documents pour découvrir les différents langages, transformer les fichiers et découvrir comment ils fonctionnent entre eux. 
* Vous pouvez ne pas les toucher et vous contenter des versions pdf qui seront mises à disposition.

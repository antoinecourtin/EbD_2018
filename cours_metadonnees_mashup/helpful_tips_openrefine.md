
## Openrefine

#### Adresses de téléchargement d'OpenRefine et de plugin
* http://openrefine.org/download.html
* https://github.com/fadmaa/grefine-rdf-extension/releases 
* http://refine.codefork.com/reconcile/viaf
* https://www.bits.vib.be/index.php/software-overview/openrefine
* https://github.com/RubenVerborgh/Refine-NER-Extension
* https://github.com/sparkica/refine-stats

#### Wikidata et OpenRefine
* Adresse pour paramétrer l'outil de réalignement avec wikidata dans OpenRefine
https://tools.wmflabs.org/openrefine-wikidata/fr/api

#### Quelques exemples de "formule" utiles dans OpenRefine
* rajouter une valeur fixe à une table : `valeur que tu veux ajouter" + cells['nom_delacolone'].value`
* exemple pour faire un rechercher/remplacer : `value.replace("[MotRecherché]","[MotLeRemplaçant]")`
* effectuer plusieurs modifications en un seul passage : `value.replace("~", "").replace(",","")`
* `value.replace("\"", "")`. Le caractère \ est un caractère d'échappement, il permet d'indiquer à OpenRefine qu'il doit utiliser le guillemet comme caractère à remplacer et non pas comme élément de la fonction value.replace.
* Enlever tout sauf les chiffres" : `replace(value,/[[a-z],[A-Z],(é|è|à|ù),\,\;\:\.\?\/\!\=\+\"\'\-\(\)\[\]]/,"")`
* Extraction d'une date de type aaaa : `value.match(/.*(\d{4}).*/)[0]`
* Supprimer les contenus semblables dans une même cellule : `value.split(", ").uniques().join(", ")`
* comparer les valeurs  de 2 colonnes :
  * via "Add column" > `if(cells["a"].value == cells["b"].value, "Yes", "No")`
  * via une construction de facet dans Facet > Custom text facet avec l'expression `value == cells["b"].value`
* géocodage avec adresse.data.gouv.fr > https://goo.gl/P3sqsB
* Calculer des longueurs de chaînes : `value.length()`
* Récupérer les info des parenthèses dans une chaine de charactère : `value.match(/.*(\(.*\)).*/)[0]`
* Compter les mots d'une chaîne : `value.split(/\b/).length()`
* Supprimer les espaces superflus d'une chaîne : `value.trim()`
* Transformer des caractères spéciaux HTML (ex: &eacute;) : Edit cells > Common transform > Unescape HTML entities
* extration des parenthèse : `value.match(/.*(\(.*\)).*/)[0]`
* extraction d'une date de type "12 janvier 1987" : `value.match(/.*(\d{2} [a-z]* \d{4}).*/)[0]`
* appeler une API via la fonction Fetching URL: `"http://maps.google.com/maps/api/geocode/json?sensor=false&address=" + escape(value, "url")"`
* Extraitre une info dans un json (lattitude) issue d'une requête à une API : `value.parseJson().results[0].geometry.location.lat`
* Extraire l'id (ou le nom du Q) de wikidata après le réalignement: `cell.recon.match.id / cell.recon.match.name`
* Template pour croiser 2 jeux de données = `cell.cross("My Address Book", "friend")[0].cells["address"].value`
=> cell.cross("nomduprojet", "nomColonneeCléIntermédiaire")[0].cells["nomColonneArécupérer"].value
* pour exporter en geojson : https://gist.github.com/psychemedia/53e30d3d151fea23af68


##### Liens vers ressources indispensables en français pour OpenRefine appliqués aux GLAMs
* Les supports de cours de Mathieu Saby sur Slideshare
https://fr.slideshare.net/27point7/nettoyer-et-prparer-des-donnes-avec-openrefine
* Le support de Maïwenn Bourdic, régulièrement mis à jour
https://patrimoine-et-numerique.fr/tutoriels/52-36-openrefine-excel-aux-hormones-pour-nettoyage-de-donnees
* Tuto sur bibliopedia
https://www.bibliopedia.fr/wiki/OpenRefine_:_exemples


##### Liens vers quelques tuto complémentaire intégrant OpenRefine
* TUTO : “Reconcilier” une liste de nom d’architectes avec Wikidata en utilisant OpenRefine : https://medium.com/@seeksanusername/reconcilier-une-liste-darchitecte-avec-wikidata-en-utilisant-openrefine-16819fbb2903
* TUTO : Exploiter/visualiser/explorer un corpus issue de l’OAI-PMH grâce au duo OpenRefine/Palladio
https://medium.com/@seeksanusername/exploiter-visualiser-explorer-un-corpus-issue-de-loai-pmh-gr%C3%A2ce-au-couple-openrefine-palladio-1241323cf626
* Exploiter des cartes anciennes numérisées - Trucs et astuces (avec du Mapwarper, Palladio, umaps)
https://medium.com/@seeksanusername/exploiter-des-cartes-anciennes-num%C3%A9ris%C3%A9es-99d4ffc7788a

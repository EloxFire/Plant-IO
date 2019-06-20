DROP DATABASE IF EXISTS plantio_db;

CREATE DATABASE plantio_db;

USE plantio_db;

CREATE TABLE infos_plantes (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL,
  categorie VARCHAR(25) NOT NULL,
  description TEXT,
  photo varchar(50) NULL,
  humi_opti VARCHAR(25) NOT NULL,
  temp_opti VARCHAR(25) NOT NULL,
  lumi_opti VARCHAR(30) NOT NULL,
  periode_floraison VARCHAR(35) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;

-- INSERT INTO infos_plantes
-- VALUES (0, 'nom', 'categorie', 'description', 'photo', 'humidite', 'temperature', 'lumi', 'periode');

INSERT INTO infos_plantes
VALUES (1, 'Apagente', 'Plante pour pots', 'Belle plante vivace donnant, en juin-juillet, des fleurs en ombelles d’un beau bleu profond en haut de hautes tiges raides et solides. Feuilles ', 'photo', 'humidite', 'Entre -10 et 12°C', 'Soleil/Mi-Ombre', 'Juin/Juillet');

INSERT INTO infos_plantes
VALUES (2, 'Bulbine frutesecens', 'Plante pour pots', 'Vivace à fl eurs jaunes ou oranges sur de fines hampes se renouvelant de mars à novembre. Feuilles persistantes vertes, cylindriques et charnues. Résistance particulière à la sécheresse. ', 'photo', 'humidite', 'temperature', 'Soleil', 'Mars à Novembre');

INSERT INTO infos_plantes
VALUES (3, 'Liseron d\'ornement', 'Plante pour pots', 'Belle plante, un peu capricieuse, aux rameaux dressés, au feuillage persistant et soyeux. Elle forme une boule étalée ou retombante si on la place au dessus d’un muret. Fleurs blanches d’avril à juillet. Nécessite un sol léger, très bien drainé. Résistance particulière aux embruns', 'photo', 'humidite', 'temperature', 'Soleil', 'Avril à Juillet');

INSERT INTO infos_plantes
VALUES (4, 'Calathea', 'Plante pour pots', 'Belle plante tropicale, le calathea est surnommé « plante paon » en raison de la forme souvent oblongue de ses feuilles qui sont ornées d’un motif de plume très contrasté. De plus, elles se resserrent le soir pour se rouvrir harmonieusement chaque matin.', 'photo', 'Sol humide', 'temperature', 'Mi-Ombre', 'Mars à Aout');

INSERT INTO infos_plantes
VALUES (5, 'Papyrus', 'Plante pour pots', 'Le papyrus (ou cyperus) est une plante semi-aquatique à la beauté exotique qui ne pèche que par son manque de rusticité. Il orne les bords de bassin dans les régions au climat doux, mais peut aussi se cultiver sous une véranda ou dans la maison.', 'photo', 'Sol humide', 'temperature', 'Soleil', 'Juin à Septembre');

INSERT INTO infos_plantes
VALUES (6, 'Hoya', 'Plante pour pots', 'Robuste plante d’intérieur, le hoya séduit par plusieurs aspects : son feuillage souple aux belles feuilles charnues et ses fleurs cireuses aux couleurs et formes extraordinaires. Certaines espèces surprenantes pourraient avoir leur place dans un coffret', 'photo', 'Sol humide', 'temperature', 'Mi-Ombre', 'Mars à Novembre');

INSERT INTO infos_plantes
VALUES (7, 'Cocotier', 'Plante d\'exterieur', 'Cultiver le cocotier est bien tentant, lorsqu’on aime l’ambiance exotique et la chaleur de son pays d’origine. Dans nos régions, sa culture ne peut se faire qu’en pot et en intérieur. Elle reste possible, mais exige des soins attentifs.', 'photo', 'Sol humide', 'temperature', 'Soleil', '--');

INSERT INTO infos_plantes
VALUES (8, 'Epiphyllum', 'Plante d\'exterieur', 'Les épiphyllums font partie des rares cactus de forêts tropicales et subtropicales qui vivent sur les arbres. Leurs tiges plates ou triangulaires pratiquement sans épines portent de magnifiques fleurs richement colorées notamment chez les hybrides.', 'photo', 'Sol drainé', 'temperature', 'Mi-Ombre', 'Mai à Aout');

INSERT INTO infos_plantes
VALUES (9, 'Cordyline', 'Plante pour pots', 'En fonction des espèces, les cordylines sont utilisées au jardin ou comme plantes d’intérieur. Graphiques, vertes ou colorées, elles apportent partout une jolie touche exotique.', 'photo', 'Sol drainé', 'temperature', 'Soleil', 'Juillet à Aout');

INSERT INTO infos_plantes
VALUES (10, 'Figuier de Barbarie', 'Plante pour pots', 'Le figuier de Barbarie appelé parfois « cactus-raquette » est une plante grasse très répandue dans les régions méditerranéennes et tropicales, utilisée autant pour l’ornement que pour ses fruits juteux.', 'photo', 'Sol Sec', 'temperature', 'Soleil', 'Mai à Juin');

INSERT INTO infos_plantes
VALUES (11, 'Canna', 'Plante d\'exterieur', 'Plante tropicale moins fragile qu’il n’y paraît, le canna est apprécié tant pour son feuillage exubérant que pour ses fleurs aux couleurs chatoyantes. En massif ou en pot, il apporte une touche d’exotisme au jardin ou sur la terrasse.', 'photo', 'Sol humide', 'temperature', 'Soleil/Mi-Ombre', 'Juilet à Novembre');

INSERT INTO infos_plantes
VALUES (12, 'Bananier', 'Plante d\'exterieur', 'Au jardin, dans la véranda ou dans la maison, ils apportent tous une belle touche exotique. Leur culture est plutôt facile mais, il faut le savoir, leurs fruits ne seront généralement pas consommables.', 'photo', 'Sol Drainé', 'temperature', 'Soleil', 'Juillet à Aout');

INSERT INTO infos_plantes
VALUES (13, 'Caladium', 'Plante pour pots', 'Magnifique plante très décorative, le caladium se remarque par son feuillage aux couleurs étonnantes, à la texture particulière et aux formes de toute beauté. La plante très délicate est malheureusement difficile à conserver.', 'photo', 'Sol drainé', 'temperature', 'Soleil/Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (14, 'Fittonia', 'Plante pour pots', 'Caractéristique par ses feuilles ovales aux nervures colorées qui attirent le regard, le fittonia est une plante rampante très décorative. Sa culture demande des conditions particulières indispensables à respecter.', 'photo', 'Sol humide', 'temperature', 'Mi-Ombre', 'Mai à Aout');

INSERT INTO infos_plantes
VALUES (15, 'Persil', 'Plante pour pots', 'Plat ou frisé, le persil est une savoureuse plante aromatique qui agrémente nos plats cuisinés et nos salades. Très facile à cultiver, on peut aussi l\'utiliser en accompagnement pour parfumer les crustacés et les grillades.', 'photo', 'Sol Drainé', 'temperature', 'Soleil/Mi-Ombre', 'Juin à Aout');

INSERT INTO infos_plantes
VALUES (16, 'Philodendron', 'Plante d\'exterieur', 'Cette plante d’origine tropicale au feuillage très décoratif s’acclimate bien dans nos intérieurs. Peu exigeants et doués de capacités dépolluantes, les philodendrons conviennent à tous, même aux jardiniers débutants.', 'photo', 'Sol Neutre', 'temperature', 'Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (17, 'Pothos', 'Plante pour pots', 'Très répandu dans les intérieurs, le pothos est une belle liane appréciée pour son aspect grimpant ou retombant, très décoratif. C’est une plante tropicale au feuillage dense, facile à cultiver et qui pousse rapidement.', 'photo', 'Sol humide', 'temperature', 'Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (18, 'Schulumbergera', 'Plante pour pots', 'Il est mieux connu sous le nom de cactus de Noël, offre une floribondité exceptionnelle et des tiges sans aiguillons. Une véritable aubaine pour les amateurs de cactées d’entretien facile et de plantes d’intérieur fleuries.', 'photo', 'Sol Drainé', 'temperature', 'Soleil/Mi-ombre', 'Octobre à Mars');

INSERT INTO infos_plantes
VALUES (19, 'Schefflera', 'Plante pour pots', 'Le schefflera est une des plantes les plus courantes des maisons, appartements et bureaux. Il est apprécié pour la beauté et l’élégance de son feuillage vernissé, sa facilité d’entretien et sa grande robustesse.', 'photo', 'Sol drainé', 'temperature', 'Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (20, 'Zamioculcas', 'Plante d\'exterieur', 'Sur le marché français depuis peu, le Zamioculcas ou plante ZZ est une plante d’intérieur d’une esthétique sobre, graphique et moderne. Particulièrement robuste, elle est également peu exigeante et facile à cultiver.', 'photo', 'Sol Drainé', 'temperature', 'Soleil/Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (21, 'Tillandsia', 'Plante pour pots', 'Étonnante plante épiphyte ou terrestre, le tillandsia comblera les esprits créatifs et curieux. Il réserve en effet de belles possibilités de culture, avec ou sans terreau, et produit des inflorescences aux couleurs magnifiques.', 'photo', 'Sol Humide', 'temperature', 'Soleil', 'Novembre à Mars');

INSERT INTO infos_plantes
VALUES (22, 'Echeveria', 'Plante pour pots', 'Réputé pour son beau feuillage, l’echeveria est une vivace tapissante aux feuilles épaisses et cireuses très particulières. C’est une petite plante, au port arrondi et compact, qui se plaît particulièrement au soleil et à la lumière.', 'photo', 'Sol Drainé', 'temperature', 'Soleil', 'Mai à Novembre');

INSERT INTO infos_plantes
VALUES (23, 'Carpobrotus', 'Plante d\'exterieur', 'Plante grasse très répandue en bord de mer, le Carpobrotus se remarque par les beaux tapis colorés que forment ses fleurs aux teintes vives. Plante du soleil par excellence, il garnit les talus les plus rocailleux et produit des fruits comestibles.', 'photo', 'Sol Drainé', 'temperature', 'Soleil', 'Mai à Octobre');

INSERT INTO infos_plantes
VALUES (24, 'Aucuba', 'Plante d\'exterieur', 'L’aucuba est un arbuste très largement utilisé pour la décoration des parcs, des villes et des jardins. Il présente beaucoup de qualités comme la résistance au froid, à la sécheresse, à la pollution, au vent et aux maladies.', 'photo', 'Sol drainé', 'temperature', 'Mi-Ombre/Ombre', 'Mars à Aout');

INSERT INTO infos_plantes
VALUES (25, 'Bambou', 'Plante d\'exterieur', 'Le bambou possède un feuillage décoratif généralement abondant et une diversité immense, il y en a ainsi pour tous les goûts et tous les climats. D’une grande faculté d’adaptation, il s’entretient facilement et se multiplie seul.', 'photo', 'Sol Drainé', 'temperature', 'Mi-Ombre', '--');

INSERT INTO infos_plantes
VALUES (26, 'Cycas', 'Plante d\'exterieur', 'Proche des palmiers, le cycas donne un air exotique et décoratif au jardin. Il est d’ailleurs souvent planté en décoration autour d’une piscine, notamment dans le Sud. Ailleurs, vous pouvez le cultiver comme plante d’intérieur ou le sortir au printemps.', 'photo', 'Sol Drainé', 'temperature', 'Soleil', 'Juin à Aout');

INSERT INTO infos_plantes
VALUES (27, 'Guzmania', 'Plante pour pots', 'Apprécié pour ses belles inflorescences, le guzmania décore merveilleusement un intérieur. Ses longues feuilles vertes disposées en rosette, sa hampe florale composée de bractées colorées, ses petites fleurs éphémères en font une plante très ornementale.', 'photo', 'Sol humide', 'temperature', 'Mi-Ombre', 'Janvier à Decembre');

INSERT INTO infos_plantes
VALUES (28, 'Peperomia', 'Plante pour pots', 'Jolie plante au feuillage panaché ou gaufré, le peperomia se retrouve fréquemment dans les intérieurs, notamment pour composer des paniers suspendus ou des corbeilles. Peu encombrante, de culture facile, très diversifiée, elle se prête à la collection.', 'photo', 'Sol Drainé', 'temperature', 'Soleil/Mi-Ombre', 'Janvier à Decembre');

INSERT INTO infos_plantes
VALUES (29, 'Pommier d\'amour', 'Plante d\'exterieur', 'De jolies petites baies rouges et jaunes constellent le feuillage, donnant à cet arbrisseau le nom de pommier d’amour. Cultivé principalement pour la décoration intérieure, il peut aussi supporter une situation extérieure sous climat doux.', 'photo', 'Sol humide', 'temperature', 'Soleil', 'Juillet à Aout');

INSERT INTO infos_plantes
VALUES (30, 'Vigne Vierge', 'Plante d\'exterieur', 'La vigne vierge (Ampelopsis et Parthenocissus) fait partie de la même famille que la vigne mais ses baies ne se mangent pas. Son principal attrait réside dans son feuillage d’automne. De plus, certaines espèces produisent des grains aux coloris étonnants.', 'photo', 'Sol Drainé', 'temperature', 'Soleil/Mi-Ombre', 'Juin à Aout');

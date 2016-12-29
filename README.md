Wolf3D

# Repère orthonormé et vecteurs
1. Créer une map 2D de 0 / 1
2. Créer obervateur (position + vecteur direction)
3. Plan caméra (?) vecteur unitaire perpendiculaire a la direction de l'observateur et à une distance de 0.66 (c mieux ?)
4. Parcourir l'ensemble des x de mon écran. Ce sont des rayons qui partent de l'observateur et coupe le plan caméra en un point
Il sont représentés par position + vecteur direction
Pour déterminer la direction de ces vecteurs rayons, il faut :
- Mettre le plan caméra à l'échelle : Je veux que l'extrémité de ma caméra = -1, son milieu 0, et son autre extermité = 1 => 
echelle = (2 x / SCREEN_WIDTH) -1    x étant le point d'abscisse parcouru
- Le vecteur direction, c'est 
-- vecteurx de l'observateur + (vecteurx du plan camera X  echelle)
-- vecteury de l'observateur + (vecteury du plan camera X echelle)

=> j'ai tous mes rayons avec leur origine + leur direction

# DDA
Cet algo permet de tracer une droite de manière générale. Dans notre cas, il permet d'avancer le rayon à la recherche d'un mur.
Le principe en gros : 
- je cherche l'intersection des cases en x et en y. Si d(y2-y1) > d(x2-x1) alors j'utilise en incrément d(x2-x1) pour le nouveau calcul
de l'avancée de la droite : 
-- x = ancienX + d(y2-y1)
-- y = ancienY + d(y2-y1)

on a mapX qui est la case en x, mapY la case en y. Au debut, elles valent la position initiale du rayon. Ensuite, j'avance d'un cran (cf. DDA)
et j'obtiens
-- sideDistY, sideDistX ???
-- deltaDistX ... ???

==> J'obtiens la distance du rayon au mur. Quel côté du,mur ???

# hauteur du mur.
Une fois la distance au mur trouvée, je vais construire la verticale entière. Je vais calculer la hauteur de ce mur et sa place en fonction
de sa distance. A priori, je me positionne à 1/2 de hauteur de l'écran. puis ?

Je calcule ensuite à quel y je démarre le mur et à qel y je le finis.

# Dessin
Je parcours tous les y de 0 a SCREEN_HEIGHT, et je peints mon pixel en rouge si c'est un mur et en bleu sinon.

# Affichage 
Une fois que tout l'écran a été calculé, j'ai une map de pixels, que j'update dans un sprite affiché à l'écran. C'est good !

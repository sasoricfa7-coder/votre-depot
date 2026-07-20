package main
import "fmt"

//N pour dire Noeud
type N struct{
	Nombre int
	operation string
	gauche *N
	droite *N
}

func creation_nombre (P *N, nbr int) {
	P.Nombre = nbr
}

func creation_op (P *N, op string) {
	P.operation = op
}

func main (){

	var noeudA, noeudB, noeudchef N
	
	creation_nombre (&noeudA, 10)
	creation_nombre (&noeudB, 5)
	creation_op (&noeudchef, "+")

	noeudchef.gauche = &noeudA
	noeudchef.droite = &noeudB

	fmt.Printf ("Hello world\n")
}

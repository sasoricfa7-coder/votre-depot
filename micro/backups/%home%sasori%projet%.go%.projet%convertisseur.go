package main
import "fmt"

func affiche () int  {
	var choix int
	
	fmt.Printf ("Programme qui convertie : \n")
	fmt.Printf ("1. celsuis en Fahrenheit!\n")
	fmt.Print ("2. Kilomètres en Miles!\n")
	fmt.Printf ("3. Quittez\n")
	fmt.Printf ("choix : ")
	fmt.Scanln (&choix)
	
	if (choix == 1 || choix == 2 || choix == 3) {
		return choix
	} else {
		return 0
	}
	
}

func celsTofahr () float64 , float64{
	var C float64
	fmt.Printf ("\nEntrez le nombre de °C : ")
	fmt.Scanln (&C)
	resultat := ((C * 9/5) + 32)

	return C, resultat
	//fmt.Printf ("\n%v °C = %v Fahrenheit\n", C, resultat)
}

func KiloToMil () float64, float64{
	var K float64
	fmt.Printf ("\nEntrez le nombre de kilomètres : ")
	fmt.Scanln (&K)
	resultat := (K * 0.621371)

	return K, resultat 
	//fmt.Printf ("\n%v Kilomètre = %v Miles.\n", K, resultat)
}

func main(){

	for {
		choix := affiche () ;

		if (choix == 0) {
			fmt.Printf ("Mauvais choix.\n")
		} else if (choix == 3) {
			break
		} else {
			if (choix == 1) {
				C, resultatcelsTofahr ()
			} else {
				KiloToMil ()
			}
		}
		fmt.Printf ("\n")
	}
}

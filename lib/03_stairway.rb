def jet_de_des
	
	return rand (1...7)

	
end

def resultat(r)

	case r
		when 5,6
		puts "vous avancez"
		return 1
 		
		when 2..4
 		puts "vous ne bougez pas"
		return 0

		when 1
	 	puts "vous reculez d'une case"
		return -1
	
	end

	
end


def perform

	puts "bienvenu dans le jeu votre personnqge est en bas de l'escalier"
 	position = 0
 	nb = 0
	while position < 10

		 r = jet_de_des
		 puts "vous avez obtenu #{r} au lancer de dés"

		 res = resultat(r)
		
		 
		 position = position + res
		 
		 if position <0
		 	position = 0
		 end

		 puts "vous etes sur la marche numero #{position}"
		 
		 nb = nb +1
	 
	 end

 	 puts " Vous avez fini cette partie en #{nb} itération"

	 return nb

end



def average_finish_time
	average = 0
	100.times do
		average = average +perform
	end
	puts "Il faut en moyenne #{average/100} lancé pour atteindre le haut de l'escalier"
end
average_finish_time

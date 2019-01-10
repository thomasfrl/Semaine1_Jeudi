def signup
	puts "bienvenu, veuillez rentrer un mot de passe"
	print ">"
	return mdp = gets.chomp
end

def login(mdp)
	puts "bienvenu, quel est votre mot de passe"
	print ">"
	if gets.chomp != mdp
		login(mdp)
	else
		welcom_screen
	end
end

def welcom_screen
	puts "bienvenu dans ta zone secrète"
	puts "Voici le numéro de la copine d'hugo et le lien vers ses photos sexys "
end


def perform 
	mdp=signup
	login(mdp)
end

perform

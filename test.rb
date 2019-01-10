class Utilisateur
	attr_accessor :nom, :amis
	def affiche_amis
		puts nom + " a " + amis.size.to_s + " ami(s):"
		amis.each do |ami|
			puts ami.nom			
		end
	end
	def est_amis_avec(ami_test)
		condition = false
		amis.each do |ami|
			if ami == ami_test
				condition = true
				break
			end
		end
		puts "est-ce-que " + nom + " est ami avec " + ami_test.nom + " :"
		puts condition
	end 
end

alice = Utilisateur.new
bob = Utilisateur.new
jane = Utilisateur.new

alice.nom = "Alice"
alice.amis = [bob, jane]

bob.nom = "Bob"
bob.amis = [alice,jane]

jane.nom = 	"Jane"
jane.amis =[bob, alice]

alice.affiche_amis
alice.est_amis_avec(bob)

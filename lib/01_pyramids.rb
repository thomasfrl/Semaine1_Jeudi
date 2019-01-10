def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide! Choisit un nombre entre 1 et 25!"
	print ">"
	x=gets.chomp.to_i
	y=1

	while y < x
	    x.times {
	        puts "#" * y
	        y+=1
	        }
	end
		
end	


def half_pyramid_inv
	puts "Salut, bienvenue dans ma "+"super"+" pyramide ! Combien d'étages veux-tu ?"
	print "> "
	user_number = Integer(gets.chomp)

	user_number.times do |i|
	    (user_number-i).times do
	        print " "
	    end
	    (i+1).times do
	        print "#"
	    end
	    print "\n"

	end
		
end

def creation_ligne(nb_diese,nb_etage)
	nb_espace = ((nb_etage*2-1)-nb_diese)/2
	nb_espace.times do 
		print " "
	end
	nb_diese.times do
		print "#"
	end
	print "\n"
end


def entire_pyramid
	puts "Salut, bienvenue dans ma super pyramide! Choisit un nombre entre 1 et 25!"
	print ">"
	user_number = Integer(gets.chomp)
	user_number.times do |i|
		creation_ligne(2*i+1,user_number)
	end	
end




def losange_pyramid
	puts "Salut, bienvenue dans ma super pyramide! Choisit un nombre IMPAIRE entre 1 et 25!"
	print ">"
	user_number = Integer(gets.chomp)
	((user_number+1)/2).times do |i|
		creation_ligne(2*i+1,(user_number+1)/2)

	end		
    (user_number/2).times do |i|
		creation_ligne((user_number/2-i+1)*2-3,user_number/2+1)
	end


end

losange_pyramid



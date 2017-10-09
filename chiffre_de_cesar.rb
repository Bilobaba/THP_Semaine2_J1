def decalage(la_lettre,le_decalage)

  # on stocke le code de la lettre
  nouvelle_lettre = la_lettre

  if (la_lettre >="a" && la_lettre <="z")
    nouvelle_lettre = (la_lettre.ord + le_decalage).chr
    nouvelle_lettre = (nouvelle_lettre.ord - "z".ord + "a".ord - 1).chr if (nouvelle_lettre.ord > "z".ord)
  end

  if (la_lettre >="A" && la_lettre <="Z")
    nouvelle_lettre = (la_lettre.ord + le_decalage).chr
    nouvelle_lettre = (nouvelle_lettre.ord - "Z".ord + "A".ord - 1).chr if (nouvelle_lettre.ord > "Z".ord)
  end

  return nouvelle_lettre
end

=begin
def chiffrer_cesar(la_chaine,le_decalage)
  for  i in (0..la_chaine.length-1) do
    la_chaine[i] = decalage(la_chaine[i],le_decalage)
  end
  return la_chaine
end
=end

def chiffrer_cesar(la_chaine,le_decalage)
  la_chaine_codee = ""
  la_chaine.chars.each do |lettre|
    puts "Ancienne lettre : ",lettre
    lettre = decalage(lettre,le_decalage)
    la_chaine_codee = la_chaine_codee << lettre
  end

  puts "La nouvelle chaine : ",la_chaine_codee
  return la_chaine_codee
end


puts "Entrez le texte à chiffrer"
la_chaine_a_chiffrer = gets.chomp()
puts "Entrez le décalage"
le_decalage = gets.chomp().to_i
le_resultat = chiffrer_cesar(la_chaine_a_chiffrer,le_decalage)
puts "Resultat du chiffrage : ",le_resultat

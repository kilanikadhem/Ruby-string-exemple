 text="David avait dû s’asseoir lorsqu’il avait entendu le prénom Florence. Il était devenu blanc un instant. Il allait peut-être perdre Florence avant même de lui avoir avoué son amour. Il devait empêcher Prélude de continuer dans son délire. Mais comment pouvait-il stopper ce parasite créé par lui quelques années auparavant ? Ce n’était pas un adversaire ordinaire. David avait déjà détruit plus d’un virus, mais il s’agissait de virus installés sur des machines isolées. Aujourd’hui, c’est une sorte de virus qui a pris place sur tous les ordinateurs de la planète. Et en plus, ce virus, nommé Prélude, avait un soupçon, non négligeable, d’intelligence."

  tFreq={}
  mots=text.tr('.,:'," ").downcase.split(' ')

  mots.each do |mot|
    if tFreq[mot]
       tFreq[mot] +=1
     else
       tFreq[mot]=1
    end
  end

  tFreq.each do |mot,count|
    puts "mot #{mot} apparait #{count} fois"
  end
  tFreq=tFreq.sort_by {|mot,count| count}


  puts  tFreq.inspect
 puts "le mot qui apparait le moin est : #{tFreq.first[0]} avec #{tFreq.first[1]} fois"
 puts "le mot qui apparait le plus est : #{tFreq.last[0]} avec #{tFreq.last[1]} fois"

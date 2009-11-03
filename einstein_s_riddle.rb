# einstein_s_riddle.rb

def make_houses
  house_colors = %w[yellow blue red green white]
  nationalities = ("Norweign %s English %s %s" % %w[Swede Dane German].sort_by{rand}).split
  drinks = ("%s %s milk coffee %s" % %w[tea water bier].sort_by{rand}).split
  cigarettes = ("Dunhill %s %s %s %s" % %w[PallMall Blend BlueMaster Prince].sort_by{rand}).split
  pets = ("%s horse %s %s %s" % %w[dog bird cat fish].sort_by{rand}).split
  house_colors.zip nationalities, drinks, cigarettes, pets
end

def facts1
  %Q[Swede, dog
    Dane, tea
    PallMall, bird
    BlueMaster, bier
    German, Prince].each_line.collect{|e| e.split(',')}.
    collect{|a, b| [a.strip, b.strip]}
end
  
def facts2
  [['Blend', 'cat'], ['Blend', 'water']]
end

solutions, candidates = [], []
40000.times do
  houses = make_houses
  result = facts1.collect do |fact|
    houses.collect{|house| (house - fact).size == 3}.include? true
  end
  (candidates << houses) unless result.include? false
  
  candidates.collect do |candidate|
    result = facts2.collect do |fa, fb|
      fan, fbn = 0, 0
      candidate.each_with_index do |house, i|
        fan = i if house.include? fa
        fbn = i if house.include? fb
      end
      fbn == fan + 1 or fbn == fan - 1
    end
    (solutions << candidate) unless result.include? false
  end
end

require 'pp'
pp solutions.uniq


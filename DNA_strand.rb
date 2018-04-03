def dna_strand(dna)
  compliment = dna.split("").map do |letter|
    case letter
    when "A"
      letter = "T"
    when "T"
      letter = "A"
    when "C"
      letter = "G"
    when "G"
      letter = "C"
    end
  end

  compliment.join.to_s
end


puts dna_strand("TACCGA")

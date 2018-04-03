def dna_strand(dna)
  # my solution
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

  # slick solution from codewars
  # dna.tr("ACTG", "TGAC")
end

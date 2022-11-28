word_list =[
		"abandoned","able","absolute","adorable","adventurous","academic","acceptable","acclaimed","accomplished",
		"accurate","aching","acidic","acrobatic","active","actual","adept","admirable","admired","adolescent",
		"adorable","adored","advanced","afraid","affectionate","aged","aggravating","aggressive","agile","agitated",
		"agonizing","agreeable","ajar","alarmed","alarming","alert","alienated","alive","all","altruistic","amazing",
		"ambitious","ample","amused","amusing","anchored","ancient","angelic","angry","anguished","animated","annual",
		"another","antique","anxious","any","apprehensive","appropriate","apt","arctic","arid","aromatic","artistic",
		"ashamed","assured","astonishing","athletic","attached","attentive","attractive","austere","authentic",
		"authorized","automatic","avaricious","average","aware","awesome","awful","awkward","babyish","bad","back",
		"baggy","bare","barren","basic","beautiful","belated","beloved","beneficial","better","best","bewitched","big",
		"bighearted","biodegradable","bitesized","bitter","black"
	     ];





problem = word_list[rand(word_list.length)]

puts 'Welcome to hangman'
puts "The word has #{problem.length} letters"

solution = Array.new(problem.length, "_")
puts solution.join(" ")
# problem.length.times do |i|
#     solution.push("_")
# end

puts 'Make a guess'
guess = gets.chomp
puts "Your guess is '#{guess}'"
problem.each_char.with_index do |char, i|
    if guess == char
        solution[i] = char
        puts solution
    end
end




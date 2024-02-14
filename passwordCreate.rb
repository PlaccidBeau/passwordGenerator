require_relative "password"

class Passwordcreate
  def initialize
    @password = []
    @password << Passwordbody.new('Hulu', 'RdAonvY!')

  end

  def run
    loop do
      # puts "\n"
      puts "Welcome to passwordCreator"
      puts "Enter 1 to create password"
      puts "Enter 2 to to show all stored passwords"
      puts "Enter 3 to end program"
      print "Please select an option:"
      option = gets.chomp.to_i
      # puts "\n"
      case option
      when 1
        createPassword
      when 2
        showPasswords
      when 3
        puts "Until next time"
        break
      else
        puts "Invalid input, Try again"
    end
  end
end

private

  def createPassword
    print "Enter login email/username:"
    login = gets.chomp
    print "Enter character length (6 or more): "
    password = gets.chomp.to_i
    if password >= 6
      randomSymbol = ['!','@','#','$','%','&','*'].sample
      randomCharacters = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
      randomSymbol = ['!','@','#','$','%','&','*'].sample
      password = (0..password - 2).map { randomCharacters[rand(randomCharacters.length)]}.join + randomSymbol
      @password << Passwordbody.new(login, password)
      pp "[username: #{login} - password: #{password}]"
    else pp "Password must be 6 characters or longer. Try again"
    end
  end

  def showPasswords
    puts "All logins and passwords:"
    @password.each do |passcode|
      puts passcode
    end
  end
end

# me = randomSymbol
# randL = randomCharacters
# randWord = randomString
me = ['!','@','#','$','%','&','*'].sample
randL = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
# //  for randomPassword with speccial character
randWord = (0..4).map { randL[rand(randL.length)]}.join + me
# randWord = (0..10).map { randL[rand(randL.length)]}.join
# pp randWord
soRandom = randWord.chars
soRandom2 = soRandom.delete_at(rand)
# soRandom2 = soRandom.pop
soRandom3 = soRandom.join
# pp soRandom3

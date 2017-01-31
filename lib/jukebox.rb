songs = [
  "Phoenix - 1901",
  "Richard & Linda Thompson - Shoot Out The Lights",
  "Wolf Parade - We Built Another World",
  "Rush - Middletown Dreams",
  "Be Bop Deluxe - Blazing Apostles",
  "Johnny Hallyday - Noir c'est noir",
  "Serú Girán - Encuentro En El Diablo",
  "Jethro Tull - Songs From The Wood",
  "They Might Be Giants - Why Does The Sun Shine? (The Sun Is A Mass of Incandescent Gas)",
  "Soda Stereo - De Música Ligera",
  "Wilco - Impossible Germany"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"

  input = gets.chomp
  index = input.to_i - 1

  if index > -1 && songs[index] != nil
    puts "Playing #{songs[index]}"
  elsif songs.include?(input) == true
    index = songs.index(input)
    puts "Playing #{songs[index]}"
  else
    puts "That song sucks, please try again"
  end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"

  input = nil

  until input == "exit"
    input = gets.chomp
    if input == "help"
      1.times do help
      end
    elsif input == "list"
      1.times do list(songs)
      end
    elsif input == "play"
      1.times do play(songs)
      end
    elsif input == "exit"
      1.times do exit_jukebox
      exit
      end
    end
  end


end

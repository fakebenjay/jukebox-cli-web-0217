songs = {
  "Go Go GO" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/01.mp3',
  "LiberTeens" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/03.mp3',
  "Guiding Light" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/04.mp3',
  "Wolf" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/05.mp3',
  "Blue" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => '/home/fakebenjay-37912/code/labs/jukebox-cli-web-0217/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  song_list = songs.keys

  song_list.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name:"
  input = gets.chomp

  if songs.keys.include?(input)
    puts "Now Playing #{input}"
    system 'open ' << songs[input]
  else
    puts "That song sucks, please try again"
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

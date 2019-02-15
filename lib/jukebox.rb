songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts"- list : displays a list of songs you can play"
  puts"- play : lets you choose a song to play"
  puts"- exit : exits this program"
end

def list(songs)
  solution = []
  songs.each_with_index {|song, index|
    solution.push((index + 1).to_s + ". " + song)
  }
  puts solution
end

def play(songs)
  puts "Please enter a song name or number:"
  user_song = gets.chomp

  if songs.include?(user_song)
    puts "Playing #{user_song} + 3"
  elsif user_song.to_i != 0 and user_song.to_i <= songs.length
    puts "Playing " + songs[user_song.to_i - 1]
  else
    puts "Invalid input, please try again"
  end 
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  while command != "exit"
    case 
    when command == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    when command == "list"
      puts list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    when command == "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    end
  end
  exit_jukebox
end

require "google/cloud/translate/v2"

translate = Google::Cloud::Translate::V2.new(
  key: "YOUR_API_KEY",
)

possible_languages = { Amharic: "am",
                       Arabic: "ar",
                       Basque: "eu",
                       Bengali: "bn",
                       Bulgarian: "bg",
                       Catalan: "ca",
                       Cherokee: "chr",
                       Croatian: "hr",
                       Czech: "cs",
                       Danish: "da",
                       Dutch: "nl",
                       English: "en",
                       Estonian: "et",
                       Filipino: "fil",
                       Finnish: "fi",
                       French: "fr",
                       German: "de",
                       Greek: "el",
                       Gujarati: "gu",
                       Hebrew: "iw",
                       Hindi: "hi",
                       Hungarian: "hu",
                       Icelandic: "is",
                       Indonesian: "id",
                       Italian: "it",
                       Japanese: "ja",
                       Kannada: "kn",
                       Korean: "ko",
                       Latvian: "lv",
                       Lithuanian: "lt",
                       Malay: "ms",
                       Malayalam: "ml",
                       Marathi: "mr",
                       Norwegian: "no",
                       Polish: "pl",
                       Portuguese: "pt-PT",
                       Romanian: "ro",
                       Russian: "ru",
                       Serbian: "sr",
                       Chinese: "zh-CN",
                       Slovak: "sk",
                       Slovenian: "sl",
                       Spanish: "es",
                       Swahili: "sw",
                       Swedish: "sv",
                       Tamil: "ta",
                       Telugu: "te",
                       Thai: "th",
                       Turkish: "tr",
                       Urdu: "ur",
                       Ukrainian: "uk",
                       Vietnamese: "vi",
                       Welsh: "cy" }

# language = possible_languages[possible_languages.values.sample]
# p language
# translation = translate.translate "Hello world!", to: language
# translation.text

#Hooray, this works! This takes a user input and translates it to Spanish!
# puts "Please input a word to have it translated to Spanish!"
# word = gets.chomp
# translation = translate.translate word, to: "es"
# p translation.text

# Yay! This works for a user to input their own language!
# puts "Please input a word to have it translated!"
# word = gets.chomp
# puts "Please input a language code for it to be translates to!"
# language = gets.chomp
# translation = translate.translate word, to: language
# p translation.text

#Trying to get a random pair.
# YAY I DID IT!!!!!
# language = possible_languages[possible_languages.keys.sample]
# translation = translate.translate "Hello, world!", to: language
# p translation.text

# Trying to combine?
# puts "Welcome to my super fun game! To begin, input a word or phrase of your choice!"
# input = gets.chomp
# puts "Thanks! Here's how the game works: I have your input, and I'm going to translate it to a random language. Here goes:"
# language = possible_languages[possible_languages.keys.sample]
# answer = possible_languages.key(language)
# translation = translate.translate input, to: language
# p translation.text
# puts "Any idea what lanaguage it is? Take a guess, and I'll let you know if you're right! After 4 tries, you lose :("
# puts "Take your best guess!"
# 4.times do
#   guess = gets.chomp
#   if guess == answer
#     puts "You win!"
#     break
#   else
#     puts "Try again!"
#   end
# end
# puts "Oh no, you lost :(. Time to brush up your linguistics knowledge!"
# puts "(In case you were wondering, the correct answer was #{answer}.)"

#Final Combine!!
system "clear"
puts "Welcome to my translation app! Input 1 to translate, and 2 to play a game!"
choice = gets.chomp.to_i
if choice == 1
  puts "Please input a word to have it translated!"
  word = gets.chomp
  puts "Please input a language CODE for it to be translated to!"
  language = gets.chomp
  translation = translate.translate word, to: language
  p translation.text
elsif choice == 2
  puts "Welcome to my super fun game! To begin, input a word or phrase of your choice!"
  input = gets.chomp
  puts "Thanks! Here's how the game works: I have your input, and I'm going to translate it to a random language. Here goes:"
  language = possible_languages[possible_languages.keys.sample]
  answer = possible_languages.key(language)
  translation = translate.translate input, to: language
  p translation.text
  p language
  p answer
  puts "Any idea what lanaguage it is? Take a guess, and I'll let you know if you're right! After 4 tries, you lose :("
  puts "Take your best guess!"
  4.times do
    guess = gets.chomp
    if guess == answer
      puts "You win!"
      break
    else
      puts "Try again!"
    end
  end
  puts "Oh no, you lost :(. Time to brush up your linguistics knowledge!"
  puts "(In case you were wondering, the correct answer was #{answer}.)"
else
  puts "Idk what you did but it's wrong!"
end

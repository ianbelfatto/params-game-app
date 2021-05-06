require "http"

system "clear"
puts "Welcome to the Guess a Number Game!"
puts "Please guess the computer's number, between 1 and 100: "

comp_num = HTTP.get("http://localhost:3000/randnum?randnum=36")
# p comp_num.parse["message"]
user_num = ""
while user_num.to_i != comp_num.parse["message"]
  user_num = gets.chomp
  if user_num.to_i < comp_num.parse["message"]
    puts "Too low!"
  elsif user_num.to_i > comp_num.parse["message"]
    puts "Too high!"
  end
  break if user_num.to_i == comp_num.parse["message"]
end
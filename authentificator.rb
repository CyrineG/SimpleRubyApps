users = [
  {username: "asma", password: "pwd1"},
  {username: "amir", password: "pwd1"},
  {username: "moataz", password: "pwd1"},
  {username: "salwa", password: "pwd1"},
  {username: "khalil", password: "pwd1"},
]

def auth_user(username, password, list_of_users) 
    
  list_of_users.each do |user| 
    if user[:username] == username
      if user[:password] == password
        return " welcome #{user[:username]}"
      end
    else
    return "wrong credentials!"
    end
  end

end

n = 4
puts "welome to the authenticator"
17.times{print "-"}
puts "\n this program will take input from the user and compare password"

while n>0 do
  n -= 1
  print "username: "
  username= gets.chomp
  print "password: "
  password = gets.chomp

  authentication = auth_user(username, password, users)

  puts authentication

  puts "press n to quit or any other key to continue : "
  answer = gets.chomp
  if answer == "n"
    puts "goodbye!" 
    break
  end
end
puts "you have exceeded teh number of attempts"
end
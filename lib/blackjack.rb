require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  Random.rand(1...12)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  puts "Your cards add up to " + (first_card+second_card).to_s 
  first_card + second_card
end

def hit?(current_total)
  prompt_user
  action = get_user_input.downcase
  if action == 's'
    return current_total
    return stay = true 
  elsif action == 'h'
    current_total = current_total + deal_card
    return current_total
  else 
    invalid_command
    prompt_user
    action = get_user_input.downcase
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_total = initial_round
  stay = false 
  until current_total > 21 or stay == true 
    hit?(current_total)
    stay = true 
    display_card_total(current_total)
  end 
end_game(current_total)
end
    

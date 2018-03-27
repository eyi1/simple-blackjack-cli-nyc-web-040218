def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  return rand(1..11)# code #deal_card here
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total# code #initial_round here
end

def hit? (card_total)
  prompt_user
  resp = get_user_input
  if resp == 'h'
    card_total += deal_card
  elsif resp == 's'
    card_total
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input

  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  on_hand = initial_round

  until on_hand > 21
    on_hand = hit? (on_hand)
    display_card_total (on_hand)
  end
end_game (on_hand)
end

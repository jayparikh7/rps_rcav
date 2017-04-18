class GameController < ApplicationController

  def roll_die
    throw_down = rand(3)

    return throw_down
  end

  #
  # if throw_down < rock
  #   outcome = "Fatality - You Lose"
  # elsif throw_down == rock
  #   outcome = "Lame - Tie"
  # else
  #   outcome = "Yay - Win!"
  # end
  #
  # @your_output = selection + " " + outcome


  def play_rock
    your_hand = 1
    throw_down = roll_die
    if throw_down == 0
      selection = "scissor"
      display = "You Lose"
    elsif throw_down == 1
      selection = "rock"
      display = "You Tie!"
    else
      selection = "paper"
      display = "You Win!"
    end


    @victory = display
    @computer = selection


    render("play_rock.html.erb")

  end

  def play_paper
    first_number = 6
    second_number = 7
    @final_number = first_number * second_number
    render("play_paper.html.erb")

  end

  def play_scissors
    render("play_scissors.html.erb")

  end

end

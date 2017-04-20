class GameController < ApplicationController

  def roll_die
    throw_down = rand(3)

    return throw_down
  end

  def play_rock
    your_hand = "Rock"
    throw_down = roll_die
    if throw_down == 0
      selection = "Scissor"
      display = "You Win!"
    elsif throw_down == 1
      selection = "Rock"
      display = "You Tie!"
    else
      selection = "Paper"
      display = "You Lose!"
    end

    @played = your_hand
    @choice = selection
    @victory = display


    render("play_rock.html.erb")

  end

  def play_paper
    your_hand = "Paper"
    throw_down = roll_die
    if throw_down == 0
      selection = "Scissor"
      display = "You Lose!"
    elsif throw_down == 2
      selection = "Rock"
      display = "You Win!"
    else
      selection = "Paper"
      display = "You Tie!"
    end

    @played = your_hand
    @choice = selection
    @victory = display

    render("play_paper.html.erb")

  end

  def play_scissors
    your_hand = "Scissors"
    throw_down = roll_die
    if throw_down == 1
      selection = "Rock"
      display = "You Lose!"
    elsif throw_down == 2
      selection = "Paper"
      display = "You Win!"
    else
      selection = "Scissors"
      display = "You Tie!"
    end

    @played = your_hand
    @choice = selection
    @victory = display

    render("play_scissors.html.erb")

  end

end

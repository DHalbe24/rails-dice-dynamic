class DiceController < ApplicationController
  def 2d6
    @dice_roll = rand(2..12)

    render({ :template => "game_templates/2d6" })
  end

  def 2d10
    @dice_roll = rand(2..20)

    render({ :template => "game_templates/2d10" })
  end
  
  def 1d20
    @dice_roll = rand(1..20)

    render({ :template => "game_templates/1d20" })
  end

  def 5d4
    @dice_roll = rand(5..20)

    render({ :template => "game_templates/5d4" })
  end

  def dynamic
    @dice_roll = rand(:number..:sides) # forgot how to work with params

    render({ :template => "game_templates/dynamic" })
  end
end

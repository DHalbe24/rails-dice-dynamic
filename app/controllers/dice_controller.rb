class DiceController < ApplicationController
  def home
    render({ :template => "dice_templates/home"})
  end

  def two6
    @dice_roll = rand(1..6)
    @dice_roll = rand(1..6)

    render({ :template => "dice_templates/two6" })
  end

  def two10
    @dice_roll = rand(1..10)
    @dice_roll = rand(1..10)

    render({ :template => "dice_templates/two10" })
  end
  
  def one20
    @dice_roll = rand(1..20)

    render({ :template => "dice_templates/one20" })
  end

  def five4
    @dice_roll = rand(1..4)
    @dice_roll = rand(1..4)
    @dice_roll = rand(1..4)
    @dice_roll = rand(1..4)
    @dice_roll = rand(1..4)    

    render({ :template => "dice_templates/five4" })
  end

  def dynamic
    @dice_roll = rand(1..:sides) # forgot how to work with params
    @number = params.fetch("number").to_i # for getting user input
    @sides = params.fetch("sides").to_i

    @rolls = []

    @number.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    
    render({ :template => "dice_templates/dynamic" })
  end
  
end

# Virus Predictor

# I worked on this challenge with Albert Hahn.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# Will look for a file by name that you call relative to current directory.
#
require_relative 'state_data'

class VirusPredictor
  # Define initialize, which takes in 3 arguments and then sets to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Define virus_effects, which is calling the above methods
  
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
    #predicted_deaths_and_speed(@population_density, @population, @state)
  end
  private

  # Define predicted_deaths, which is using flow control to print the numbers_of_death per state depending on the argument population_density
=begin
  def predicted_deaths_and_speed(population_density, population, state)
    speed = 0.0
    case @population_density
      when 200..
        number_of_deaths = (@population * 0.4).floor
          speed += 0.5
      when 150..199
        number_of_deaths = (@population * 0.3).floor
          speed += 1.0
      when 100..149
        number_of_deaths = (@population * 0.2).floor
          speed += 1.5
      when 50..99
        number_of_deaths = (@population * 0.1).floor
          speed += 2.0
      else
        number_of_deaths = (@population * 0.05).floor
          speed += 2.5
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
=end
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    case @population_density 
      when 200..
      number_of_deaths = (@population * 0.4).floor
      when 150..199
      number_of_deaths = (@population * 0.3).floor
      when 100..149
      number_of_deaths = (@population * 0.2).floor
      when 50..99
      number_of_deaths = (@population * 0.1).floor
      else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Define speed_spread, which is using flow control to puts the speed_of_spread depending on the argument population_density. Also has a counter depending on the flow control.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density 
      when 200..
      speed += 0.5
      when 150..199
      speed += 1
      when 100..149
      speed += 1.5
      when 50..99
      speed += 2
      else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

STATE_DATA.each do |state,state_data|
  #p state
  #p state_data
  #p state[state_data]
  VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects

  #"Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population]
end
  

#=======================================================================
# Reflection Section


=begin
    What are the differences between the two different hash syntaxes shown in 
    the state_data file?

    For the interior hashes (keys are population_density/population) we use 
    the syntax for when all keys are symbols. For the exterior hashes we use 
    the implicit form.

    What does require_relative do? How is it different from require?

    "require_relative" looks for another file's location relative to the 
    current file. "require" is a more general method that allows us to load 
    files which are not necessarily in the same directory as our current file.

    What are some ways to iterate through a hash?

    For this particular challenge we used the each iterator just to keep it 
    simple. Looking at documentation, it may have been more appropriate to use 
    each_pair to iterate through our hash because we need both the key and the 
    value.

    When refactoring virus_effects, what stood out to you about the variables, 
    if anything?

    My wise pairing partner noticed that both methods that virus_effects calls 
    are using the same class variables as arguments. This led to us to combine 
    the methods in the refactoring phase.

    What concept did you most solidify in this challenge?

    Iterating through nested hashes was solidified. I was doing JavaScript all 
    day before the GPS, so going back to Ruby was difficult. A few helpful 
    hints from my guide got me back up to speed quickly though.

=end


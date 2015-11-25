class NameData
  attr_reader :name
  def initialize
    @name="Sean"
  end
end

class Greetings
  attr :namedata
  def initialize
    @namedata = NameData.new
  end
  def hello
    puts "Hello #{@namedata.name}! How wonderful to see you today"
  end
end

greet = Greetings.new
greet.hello

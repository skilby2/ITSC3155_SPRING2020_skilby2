class Dessert
  @name
  @calories
  attr_accessor :calories
  attr_accessor :name
  # add code for setters and getters
  def initialize(name, calories)
    # your code here
      @name = name
      @calories = calories
  end

  
  
  def healthy?
    # your code here
    if @calories < 200
      return true
    else 
      return false
    end
  end
  
  
  def delicious?
    # your code here
    if @flavor == "licorice"
      return false
    else
      true
    end
  end
end


class JellyBean < Dessert
  # add code for setters and getters
  attr_accessor :flavor
  def initialize(flavor)
    # your code here
    super(name, calories)
    @name = flavor + " " + "jelly bean"
    @calories = 5
    @flavor = flavor
  end
end

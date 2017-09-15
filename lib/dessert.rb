class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
    attr_accessor :name
    attr_accessor :calories

  
  def healthy?
   return true if @calories < 200
  end
  
  def delicious?
    return false if @name == 'licorice Jelly bean'
    true
      
  end
end


class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor.to_s
    @calories = 5
    @name = flavor + ' Jelly bean'
  end
  attr_accessor :flavor
end


class Player

attr_accessor :name
# DEFAULT_HEALTH = 100
# DEFAULT_DAMAGE = 10

  def initialize(name) #, health)
    @name = name
    #@health = DEFAULT_HEALTH
  end

  def name_recall
    @name
  end

  # def attack
  #   @health -= DEFAULT_DAMAGE
  # end
end

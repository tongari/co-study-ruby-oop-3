require('./Wheel')

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, optional)
    @chainring = chainring
    @cog       = cog
    @wheel     = optional[:wheel]
  end

 def ratio
   chainring / cog.to_f
 end

 def gear_inches
   ratio * wheel.diameter
 end
end

puts Gear.new(
  50,
  11,
  {wheel: Wheel.new(26, 1.5)}
).gear_inches

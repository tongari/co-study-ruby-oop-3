require('./Wheel')

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring] || 50
    @cog       = args[:cog]       || 11
    @wheel     = args[:wheel]
  end

 def ratio
   chainring / cog.to_f
 end

 def gear_inches
   ratio * wheel.diameter
 end
end

puts Gear.new({
  wheel: Wheel.new(26, 1.5)
}).gear_inches

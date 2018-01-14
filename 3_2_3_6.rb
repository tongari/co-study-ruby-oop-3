require('./Wheel')

class Gear
  attr_reader :chainring, :cog, :wheel, :isBicycle

  def initialize(args)
    args = default.merge(args)
    @chainring = args[:chainring]
    @cog       = args[:cog]
    @wheel     = args[:wheel]

    @isBicycle = args[:isBicycle]

    p @isBicycle

  end

  def default
    {
      chainring: 50,
      cog: 11,
      isBicycle: true
    }
  end

  def ratio
   chainring / cog.to_f
  end

  def gear_inches
   ratio * wheel.diameter
  end
end

puts Gear.new({
  isBicycle: false,
  wheel: Wheel.new(26, 1.5)
}).gear_inches

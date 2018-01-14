require('./Wheel')

class Gear
  attr_reader :chainring, :cog, :wheel, :isBicycle

  def initialize(args)
    @chainring = args.fetch(:chainring, 50)
    @cog       = args.fetch(:cog, 11)
    @wheel     = args[:wheel]

    @isBicycle = args.fetch(:isBicycle, true)

    puts @isBicycle

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
})

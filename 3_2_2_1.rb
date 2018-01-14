# ギアを管理するクラス
class Gear
  require('./Wheel')
  attr_reader :chainring, :cog, :rim, :tire, :wheel

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @wheel     = Wheel.new(rim, tire)
  end

 # チェーンリングとコグからギア比を算出する
 def ratio
   chainring / cog.to_f
 end

 # ギアインチを算出する
 def gear_inches
   ratio * wheel.diameter
 end
end

puts Gear.new(50, 11, 26, 1.5).gear_inches

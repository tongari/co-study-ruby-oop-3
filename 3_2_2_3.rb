# ギアを管理するクラス
class Gear
  require('./Wheel')
  attr_reader :chainring, :cog, :rim, :tire, :wheel

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

 # チェーンリングとコグからギア比を算出する
 def ratio
   chainring / cog.to_f
 end

 # ギアインチを算出する
 def gear_inches
   # 恐ろしい計算が何千行とある
   ratio * diameter
   # 恐ろしい計算がさらに何千行とある
 end

 def wheel
   @wheel ||= Wheel.new(rim, tire)
 end

 def diameter
   wheel.diameter
 end

end

instance = Gear.new(50, 11, 26, 1.5)
puts instance.gear_inches

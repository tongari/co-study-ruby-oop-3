# 車輪を管理するクラス
class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  #車輪の直径を算出
  def diameter
    rim + tire * 2
  end
end

# ギアを管理するクラス
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring  #ギアの歯数
    @cog       = cog        #コグ
    @rim       = rim        #リムの直径
    @tire      = tire       #タイヤの厚み
  end

 # チェーンリングとコグからギア比を算出する
 def ratio
   chainring / cog.to_f
 end

 # ギアインチを算出する
 def gear_inches
   ratio * Wheel.new(rim, tire).diameter
 end
end

puts Gear.new(50, 11, 26, 1.5).gear_inches

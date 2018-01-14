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
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring, cog, wheel)
    @chainring = chainring  #ギアの歯数
    @cog       = cog        #コグ
    @wheel     = wheel      #’diameter’に応答するメッセージを持っているオブジェクト
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

# Gearは’diameter’を知る’Duck’を要求する
puts Gear.new(50, 11, Wheel.new(26, 1.5)).gear_inches

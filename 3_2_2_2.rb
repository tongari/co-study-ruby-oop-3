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
   ratio * wheel.diameter
 end

 def wheel
   p "インタンスはありますか？ -> #{@wheel}"
   #’wheel’インスタンスが生成されている場合は保持しているインスタンス変数を返却、
   #なければインスタンスを作成
   @wheel ||= Wheel.new(rim, tire)
 end

end

instance = Gear.new(50, 11, 26, 1.5)

puts instance.gear_inches
# ２回目のgear_inchesメソッド叩く際は’wheel’インスタンスが生成済み
puts instance.gear_inches

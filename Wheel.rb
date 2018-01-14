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

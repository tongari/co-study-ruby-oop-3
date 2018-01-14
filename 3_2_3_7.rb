require('./Wheel')

#Gearが外部インターフェースの一部の場合
module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end

    def ratio
      chainring / cog.to_f
    end

    def gear_inches
      ratio * wheel.diameter
    end
  end
end

#外部のインターフェースをラップし、自身を変更から守る
module GearWrapper
  def self.gear(args)
    SomeFramework::Gear.new(
      args[:chainring],
      args[:cog],
      args[:wheel]
    )
  end
end

#引数を持つハッシュを渡すことでGearのインスタンスを作成できるようになった
ins = GearWrapper.gear(
  chainring: 50,
  cog: 11,
  wheel: Wheel.new(26, 1.5)
)

puts ins.gear_inches

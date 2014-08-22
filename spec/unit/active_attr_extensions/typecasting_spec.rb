require "spec_helper"
require "active_attr/typecasting"

# ActiveAttr has been extended
module ActiveAttr
  describe Typecasting do
    subject(:model) { model_class.new }

    let :model_class do
      Class.new do
        include Typecasting
      end
    end

    describe "#typecaster_for" do
      it "returns HashTypecaster for Hash" do
        model.typecaster_for(Hash).should be_a_kind_of ActiveAttrExtensions::Typecasting::HashTypecaster
      end

      it "returns ArrayTypecaster for Array" do
        model.typecaster_for(Array).should be_a_kind_of ActiveAttrExtensions::Typecasting::ArrayTypecaster
      end

      Typecasting::TYPECASTER_MAP.each do |type, caster|
        it "should still return a #{caster} for #{type}" do
          model.typecaster_for(type).should be_a_kind_of caster
        end
      end
    end

    describe "#typecast_attribute" do
      it 'should still respond to typecast_attribute' do
        model.should respond_to :typecast_attribute
      end
    end
  end
end

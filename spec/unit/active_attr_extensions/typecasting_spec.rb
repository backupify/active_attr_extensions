require "spec_helper"
require "active_attr_extensions/typecasting"

module ActiveAttrExtensions
  describe Typecasting do
    subject(:model) { model_class.new }

    let :model_class do
      Class.new do
        include Typecasting
      end
    end

    describe "#typecaster_for" do
      it "returns HashTypecaster for Hash" do
        model.typecaster_for(Hash).should be_a_kind_of Typecasting::HashTypecaster
      end

      it "returns ArrayTypecaster for Array" do
        model.typecaster_for(Array).should be_a_kind_of Typecasting::ArrayTypecaster
      end
    end
  end
end

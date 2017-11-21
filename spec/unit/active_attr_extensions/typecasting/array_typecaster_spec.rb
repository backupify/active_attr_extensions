require "spec_helper"
require "active_attr_extensions/typecasting/array_typecaster"

module ActiveAttrExtensions
  module Typecasting
    describe ArrayTypecaster do
      describe "#call" do
        it "parses json for a String" do
          value = ["a", "b", "c"]
          subject.call(value.to_json).should eql value
        end

        it "casts nil to an empty Array" do
          subject.call(nil).should eql []
        end

        it "returns the to_a version of everything else that responds to to_a" do
          subject.call((1..2)).should eql [1, 2]
        end
      end
    end
  end
end

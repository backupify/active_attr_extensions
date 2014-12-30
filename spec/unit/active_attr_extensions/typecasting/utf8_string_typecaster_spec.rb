# -*- coding: utf-8 -*-
require "spec_helper"
require "active_attr_extensions/typecasting/utf8_string_typecaster"

module ActiveAttrExtensions
  module Typecasting
    describe UTF8StringTypecaster do
      subject(:typecaster) { described_class.new }

      describe "#call" do
        it "returns the original string for a String" do
          value = "abc"
          typecaster.call(value).should equal value
        end

        it "casts nil to an empty String" do
          typecaster.call(nil).should eql ""
        end

        it "returns the string version of a Symbol" do
          typecaster.call(:value).should eql "value"
        end

        it "returns the UTF8-formatted version of a non-utf-8 string" do
          value = 'tést'
          typecaster.call(value.force_encoding('ASCII-8BIT')).should eql value
        end
      end
    end
  end
end

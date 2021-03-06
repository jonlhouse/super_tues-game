require 'spec_helper'

module SuperTues
  module Board
    describe StateBin do

      it { StateBin.should < Hash }

      describe "#[]" do
        let(:bin) { StateBin[red: 42] }
        specify { bin[:red].should == 42 }
        specify { bin[double(to_sym: :red)].should == 42 }
      end

      describe "#[]=" do        
        it "call to_sym on keys" do
          bin = StateBin.new
          bin[:red] = 42
          bin[double(to_sym: :red)].should == 42
        end
      end

      describe "total" do
        specify { StateBin.new(0).total.should == 0 }
        it "sums up picks across all colors" do
          bin = StateBin[red: 1, blue: 2, green: 3]
          bin.total.should == 6
        end
      end

    end
  end
end
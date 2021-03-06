require 'spec_helper'

module SuperTues
  module Board
    module Events
      describe Event do
        
        describe ".build" do
          specify { Event.build("read_bill").should be_a ReadBill }
          specify { Rent.build(:rent, cost: 2).should be_a Rent }
        end

        describe "includes Workflow" do
          it { expect(Event).to respond_to(:workflow) }
        end

        describe "completion" do
          subject { Event.new({}) }
          context "when new" do
            its(:complete?) { should be_false }
          end
          context "when complete" do
            before(:each) { subject.complete! }
            its(:complete?) { should be_true }
          end
        end  

        describe "#type" do
          specify { expect { expect(Event.build("business").type).to be == :business } }
          specify { expect { expect(Event.build("read_bill").type).to be == :read_bill } }
        end     

        describe "modes" do
          let(:players) { [double, double, double] }
          let(:game) { double players: players }
          let(:notice) { double }
          subject { Event.new({}) }

          context "all_at_once" do
            describe "#notify" do            
              it "should yield a default Notification to each player" do
                expect { |b| subject.notify(players, notice, &b) }.to yield_control.exactly(3).times
              end
            end
          end    

        end
      end
    end
  end
end
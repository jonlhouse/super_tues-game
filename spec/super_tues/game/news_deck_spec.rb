require 'spec_helper'

module SuperTues
  module Game

    describe NewsDeck do
      specify { NewsDeck.should < Deck }
    end

  end
end
module SuperTues
  module Board

    class State

      NAMES = {
        "Alabama"=>"AL", "Alaska"=>"AK", "Arizona"=>"AZ", "Arkansas"=>"AR", 
        "California"=>"CA", "Colorado"=>"CO", "Connecticut"=>"CT", "Delaware"=>"DE", 
        "District of Columbia"=>"DC", "Florida"=>"FL", "Georgia"=>"GA", 
        "Hawaii"=>"HI", "Idaho"=>"ID", "Illinois"=>"IL", "Indiana"=>"IN",
        "Iowa"=>"IA", "Kansas"=>"KS", "Kentucky"=>"KY", "Louisiana"=>"LA", 
        "Maine"=>"ME", "Maryland"=>"MD", "Massachusetts"=>"MA", "Michigan"=>"MI", 
        "Minnesota"=>"MN", "Mississippi"=>"MS", "Missouri"=>"MO", "Montana"=>"MT", 
        "Nebraska"=>"NE", "Nevada"=>"NV", "New Hampshire"=>"NH", "New Jersey"=>"NJ", 
        "New Mexico"=>"NM", "New York"=>"NY", "North Carolina"=>"NC", "North Dakota"=>"ND", 
        "Ohio"=>"OH", "Oklahoma"=>"OK", "Oregon"=>"OR", "Pennsylvania"=>"PA", 
        "Rhode Island"=>"RI", "South Carolina"=>"SC", "South Dakota"=>"SD", 
        "Tennessee"=>"TN", "Texas"=>"TX", "Utah"=>"UT", "Vermont"=>"VT", "Virginia"=>"VA", 
        "Washington"=>"WA", "West Virginia"=>"WV", "Wisconsin"=>"WI", "Wyoming"=>"WY"
      }
      ABBRS = NAMES.invert

      attr_reader :name, :abbr, :electoral_votes, :sway, :picks
 
      def initialize(attrs)
        attrs.each { |attr,value| instance_variable_set("@#{attr}", value) }
        @picks = StateBin.new(0)
      end

    end

  end
end
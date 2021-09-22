# Create a function that will return true if the walk will take you exactly ten minutes
# and will return you to your starting point.

# Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only).
# It will never give you an empty array (that's not a walk, that's standing still!).

# Acceptance Criteria
# ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
# ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
# ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
# ten_minute_walk?(['w', 's']) # => false

#planning
  # Input        | Output
  # (['w'])         false
  # (['w', 'w'])    false
  # (['w' x 10])    false
  # (['w', 's'])    false
  # (['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w'])   true
  # (['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w'])   false
  # (['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n'])   false

#letters shoud be 10 
#&&
#numbers of S = numbers of N
#numbers of E = numbers of W

require 'kata_7'

describe 'ten_min_walk?' do
  it 'should return false if numbers of letters are less than 10' do
  expect(ten_min_walk?(['w'])).to be false
  end
end
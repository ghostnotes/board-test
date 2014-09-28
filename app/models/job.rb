class Job < ActiveRecord::Base
  enum category: { in_house: 1, entrusted: 2 }
end

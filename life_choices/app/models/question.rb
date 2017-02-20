class Question < ActiveRecord::Base
  validates :option_one, :option_two, :chose_one, :chose_two, :presence => true
end

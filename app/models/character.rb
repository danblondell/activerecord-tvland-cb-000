class Character < ActiveRecord::Base
  belongs_to :actors, through: :shows
end

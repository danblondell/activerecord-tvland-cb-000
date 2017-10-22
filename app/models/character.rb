class Character < ActiveRecord::Base
  belongs_to :shows
  has_one :actors, through: :shows
end

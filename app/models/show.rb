class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(letters)
    self.network = networks.find_or_create_by(call_letters: letters).id
  end
end

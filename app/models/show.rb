class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(letters)
    binding.pry
    self.network = networks.find_or_create_by(call_letters: letters)
  end
end

class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(letters)
    self.network = Network.find_or_create_by(letters)
  end
end

class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(name)
    self.show = shows.find_or_create_by(name: name)
  end

  def build_network
    networks.find(build_show.network_id)
  end
end

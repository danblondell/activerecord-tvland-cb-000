class AddActorIdToCharacters
  def change
    add_column(:characters, :actor_id, :string )
  end
end

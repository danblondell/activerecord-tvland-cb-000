class CreateActorsTable
  def change
    create_table :actors each do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end

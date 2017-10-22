class Characters < ActiveRecord::Migration
  def change
    create_table :character do |t|
      t.string :name
      t.string :show_id    
    end
  end
end
class CreateSports < ActiveRecord::Migration[5.2]
  def change
    create_table :sports do |t|
      t.text :sport_id
      t.text :sport_name
    end
  end
end

class RemoveSportIdFromSports < ActiveRecord::Migration[5.2]
  def change
    remove_column :sports, :sport_id, :text
  end
end
#rails generate migration remove_sport_id_from_sports sport_id:text

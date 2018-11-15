class CreateFranchises < ActiveRecord::Migration[5.2]
  def change
    create_table :franchises do |t|
      t.text :franchise_id
      t.text :franchise_name
    end
  end
end

#rails generate model Franchise franchise_id:text franchise_name:text --no-timestamps

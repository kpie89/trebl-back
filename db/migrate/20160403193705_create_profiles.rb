class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :desc

      t.timestamps null: false
    end
  end
end

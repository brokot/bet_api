class CreateSports < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

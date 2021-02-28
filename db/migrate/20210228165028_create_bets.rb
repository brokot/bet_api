class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :sport, null: false, index: true, foreign_key: true
      t.string :odds
      t.integer :status, null: false, default: 0
      t.decimal :wager
      t.integer :bet_type, null: false, default: 0

      t.timestamps
    end
  end
end

class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :rank
      t.string :scoreboard

      t.timestamps

    end
  end
end

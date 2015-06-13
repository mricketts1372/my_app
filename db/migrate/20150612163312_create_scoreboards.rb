class CreateScoreboards < ActiveRecord::Migration
  def change
    create_table :scoreboards do |t|

      t.timestamps

    end
  end
end

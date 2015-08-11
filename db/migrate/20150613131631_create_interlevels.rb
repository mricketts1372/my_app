class CreateInterlevels < ActiveRecord::Migration
  def change
    create_table :interlevels do |t|
      t.text :question
      t.text :answer
      t.integer :point

      t.timestamps

    end
  end
end

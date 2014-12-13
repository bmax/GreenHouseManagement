class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :new

      t.timestamps
    end
  end
end

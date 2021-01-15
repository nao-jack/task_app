class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :s_date
      t.date :e_date
      t.string :check

      t.timestamps
    end
  end
end

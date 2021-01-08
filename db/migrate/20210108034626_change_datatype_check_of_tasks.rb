class ChangeDatatypeCheckOfTasks < ActiveRecord::Migration[5.0]
  def change
     change_column :tasks, :check, :integer
end
end

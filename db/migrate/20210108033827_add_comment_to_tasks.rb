class AddCommentToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :Comment, :string
  end
end

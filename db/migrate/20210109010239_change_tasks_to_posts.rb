class ChangeTasksToPosts < ActiveRecord::Migration[5.0]
  def change
     rename_table :tasks,:posts
  end
end

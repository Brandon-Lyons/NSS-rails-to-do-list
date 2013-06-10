class CreateListtasksTable < ActiveRecord::Migration

  def change
    create_table :listtasks do |t|
      t.integer :list_id
      t.integer :taks_id
    end
  end
end
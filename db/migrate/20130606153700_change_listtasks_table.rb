class ChangeListtasksTable < ActiveRecord::Migration
  
  def change
    rename_column(:listtasks, :taks_id, :task_id)
    rename_table(:listtasks, :list_tasks)
  end
end
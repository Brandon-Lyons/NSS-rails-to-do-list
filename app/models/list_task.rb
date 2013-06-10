class ListTask < ActiveRecord::Base
  attr_accessible :list_id, :task_id
  belongs_to :list
  belongs_to :task
end
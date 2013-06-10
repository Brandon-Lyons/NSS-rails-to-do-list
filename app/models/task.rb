class Task < ActiveRecord::Base
  attr_accessible :description
  has_many :list_tasks, :dependent => :delete_all
  has_many :lists, through: :list_tasks
  validates :description, :presence => true
end
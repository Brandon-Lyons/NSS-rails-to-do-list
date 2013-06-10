class List < ActiveRecord::Base
  attr_accessible :name
  has_many :list_tasks
  has_many :tasks, through: :list_tasks
  validates :name, :presence => true
end
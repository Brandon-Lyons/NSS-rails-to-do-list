require 'test_helper'

class TasksCanBeViewedTest < ActionDispatch::IntegrationTest
  test "viewing tasks" do
    Task.create(description: "Test Task 1")
    Task.create(description: "test task 2")
    visit '/'
    assert_include page.body, "Test Task 1"
    assert_include page.body, "test task 2"
  end
end
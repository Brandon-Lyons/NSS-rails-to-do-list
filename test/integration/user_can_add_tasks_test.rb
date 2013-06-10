require 'test_helper'

class UserCanAddTasksTest < ActionDispatch::IntegrationTest
  test "adding a new task" do
    List.create(name: "Test 1")
  	visit '/'
  	fill_in 'Add a new task', with: 'First Task'
  	click_button 'Submit'
  	assert_include page.body, "First Task"
  end
end

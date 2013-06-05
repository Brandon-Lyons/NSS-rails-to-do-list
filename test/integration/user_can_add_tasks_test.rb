require 'test_helper'

class UserCanAddTasksTest < ActionDispatch::IntegrationTest
  test "adding a new task" do
  	visit '/'
  	fill_in 'Description', with: 'First Task'
  	click_button 'Submit'
  	assert_include page.body, "First Task"
  end
end

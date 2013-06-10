require 'test_helper'

class UserCanDeleteTasksTest < ActionDispatch::IntegrationTest
  test "deleting a task" do
    List.create(name: "Test List")
    visit '/'
    fill_in 'Add a new task', with: 'Number'
    click_button 'Submit'
    first(:link, "Complete task").click
    assert_not_includes page.body, "Number"
  end
end

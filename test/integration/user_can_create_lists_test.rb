require 'test_helper'

class UserCanCreateListsTest < ActionDispatch::IntegrationTest
  test "creating a list" do
    List.create(name: "Groceries")
    visit '/'
    assert_include page.body, "Groceries"
    fill_in 'Add a new list', with: "Honey-dos"
    click_button 'Submit List'
    assert_include page.body, "Honey Dos"
  end
end
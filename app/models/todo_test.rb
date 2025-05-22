require "test_helper"

class TodoTest < ActiveSupport::TestCase
  test "should not save todo without title" do
    todo = Todo.new(description: "Some description", status: "pending")
    assert_not todo.save, "Saved the todo without a title"
  end

  test "should not save todo without description" do
    todo = Todo.new(title: "Title", status: "pending")
    assert_not todo.save, "Saved the todo without a description"
  end

  test "should not save todo without status" do
    todo = Todo.new(title: "Title", description: "Some description")
    assert_not todo.save, "Saved the todo without a status"
  end

  test "should save todo with all attributes" do
    todo = Todo.new(title: "Title", description: "Some description", status: "pending")
    assert todo.save, "Failed to save todo with all attributes present"
  end
end

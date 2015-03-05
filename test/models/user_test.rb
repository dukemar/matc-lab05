require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup 
    @user = User.new(name: "Walter White", email: "wwhite@tweaker.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end  
  
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid? 
  end 
  
  test "name should be at least 3 characters" do
    @user.name = "a" * 2
    assert_not @user.valid?
  end
  
  test "name should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end
  
  
end
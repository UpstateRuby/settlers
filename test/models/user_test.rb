require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "users require email" do
    user = User.new.tap do |u|
      u.password = "password123"
      u.password_confirmation = "password123"
    end

    user.save

    assert !user.valid?
  end
end

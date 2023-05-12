require 'test_helper'

class UsersRegistrationTest < ActionDispatch::IntegrationTest
  test "user registration" do
    get new_user_session
    assert_response :success

    assert_difference 'User.count', 1 do
      post user_session, params: {
        user: {
          id: 805,
          email: 'test6@gmail.com',
          password: 'password12345',
          password_confirmation: 'password1234',
          name: 'testuser2'
        }
      }
    end
    assert_redirected_to root_path
    follow_redirect
    assert_select 'p', 'You have signed up successfully.'
  end
end

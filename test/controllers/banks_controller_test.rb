require "test_helper"

class BanksControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should render all banks' do
    get banks_path
    debugger  

    assert_response :success
  end
end

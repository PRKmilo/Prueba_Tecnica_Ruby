require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'should render all suppliers' do
    get suppliers_path

    assert_response :success
  end
end

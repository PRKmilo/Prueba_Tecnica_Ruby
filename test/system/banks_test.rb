require "application_system_test_case"

class BanksTest < ApplicationSystemTestCase
  test "visiting the index" do
     debugger
     visit banks_path
     assert_selector "h1", text: "Users"
   end
end

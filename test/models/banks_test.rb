require "test_helper"

class BanksTest < ActiveSupport::TestCase
  test "should not save bank without title" do
    bank = Bank.new
    assert_not bank.save
    assert bank.errors.messages[:title] == ["can't be blank"]
  end
end

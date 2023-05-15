require "test_helper"

class SupplierTest < ActiveSupport::TestCase
   test "shoud not save a supplier withput nit" do
     supplier = Supplier.new
     assert_not supplier.save
     assert supplier.errors.messages[:nit] == ["can't be blans"]
   end

   test "should not save without bank_id" do
     supplier = Supplier.new
     assert_not supplier.save
     assert supplier.errors.messages[:bank_id] == ["can't be blank"]
   end
end

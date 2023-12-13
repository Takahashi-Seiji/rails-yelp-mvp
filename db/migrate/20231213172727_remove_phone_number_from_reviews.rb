class RemovePhoneNumberFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :phone_number, :integer
  end
end

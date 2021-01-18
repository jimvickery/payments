class AddStripeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :card_brand, :string
  end
end

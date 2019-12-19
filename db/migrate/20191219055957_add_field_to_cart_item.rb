class AddFieldToCartItem < ActiveRecord::Migration[5.2]
  def change
    add_column :cart_items, :shopping_cart_item_fields, :string
  end
end

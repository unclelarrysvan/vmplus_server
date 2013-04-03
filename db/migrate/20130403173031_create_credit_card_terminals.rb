class CreateCreditCardTerminals < ActiveRecord::Migration
  def change
    create_table :credit_card_terminals do |t|
      t.string :name
      t.string :account_id
      t.string :user_id
      t.string :pin
      t.boolean :demo

      t.timestamps
    end
  end
end

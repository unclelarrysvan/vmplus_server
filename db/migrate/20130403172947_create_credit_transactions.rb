class CreateCreditTransactions < ActiveRecord::Migration
  def change
    create_table :credit_transactions do |t|
      t.string :card_number
      t.string :name_on_card
      t.decimal :amount
      t.string :cvv2_response
      t.string :card_exp
      t.boolean :approved
      t.string :error_code
      t.string :status
      t.text :transaction_id
      t.datetime :transaction_time
      t.string :approval_code
      t.integer :credit_card_terminal_id

      t.timestamps
    end
  end
end

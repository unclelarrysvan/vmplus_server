class CreditTransactionsController < ApplicationController
  respond_to :json

  def index #DELETE THIS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    @credit_transactions = CreditTransaction.all

    respond_to do |format|
      format.html
      format.json { render json: @credit_transactions }
    end
  end

  def charge_card
    terminal = create_terminal(params[:data][:account_data])
    return false if !terminal
    result = terminal.charge_card(params[:data][:card_data], params[:data][:amount], params[:data][:tax])
    result.merge!("credit_card_terminal_id" => terminal.id)
    @transaction = CreditTransaction.create(result)
    respond_with(@transaction) do |format|
      format.json {render}
    end
  end

  private

  def create_terminal(data)
    terminal = CreditCardTerminal.new()
    terminal.account_id = data[:account_id]
    terminal.user_id = data[:user_id]
    terminal.pin = data[:pin]
    terminal.demo = data[:demo]
    terminal
  end
end


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
    terminal = create_terminal(params[:account_id], params[:user_id], params[:pin])
    terminal = get_terminal(terminal)
    return false if !terminal
    result = terminal.charge_card(params[:card_data], params[:amount], params[:tax])
    result.merge!("credit_card_terminal_id" => terminal.id)
    @transaction = CreditTransaction.create(result)
    respond_with(@transaction) do |format|
      format.json {render}
    end
  end

  private
  def get_terminal(terminal_id)
    begin
      terminal = CreditCardTerminal.find(terminal_id)
    rescue ActiveRecord::RecordNotFound
      render json: {result: "Credit Card Terminal Not Found."}
      return false
    end
  end

  def create_terminal(account_id, user_id, pin)
    terminal = CreditCardTerminal.new()
    terminal.account_id = account_id
    terminal.user_id = user_id
    terminal.pin = pin
    terminal
  end
end


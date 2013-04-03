class CreditCardTerminalsController < ApplicationController
  # GET /credit_card_terminals
  # GET /credit_card_terminals.json
  def index
    @credit_card_terminals = CreditCardTerminal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @credit_card_terminals }
    end
  end

  # GET /credit_card_terminals/1
  # GET /credit_card_terminals/1.json
  def show
    @credit_card_terminal = CreditCardTerminal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @credit_card_terminal }
    end
  end

  # GET /credit_card_terminals/new
  # GET /credit_card_terminals/new.json
  def new
    @credit_card_terminal = CreditCardTerminal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @credit_card_terminal }
    end
  end

  # GET /credit_card_terminals/1/edit
  def edit
    @credit_card_terminal = CreditCardTerminal.find(params[:id])
  end

  # POST /credit_card_terminals
  # POST /credit_card_terminals.json
  def create
    @credit_card_terminal = CreditCardTerminal.new(params[:credit_card_terminal])

    respond_to do |format|
      if @credit_card_terminal.save
        format.html { redirect_to @credit_card_terminal, notice: 'Credit card terminal was successfully created.' }
        format.json { render json: @credit_card_terminal, status: :created, location: @credit_card_terminal }
      else
        format.html { render action: "new" }
        format.json { render json: @credit_card_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /credit_card_terminals/1
  # PUT /credit_card_terminals/1.json
  def update
    @credit_card_terminal = CreditCardTerminal.find(params[:id])

    respond_to do |format|
      if @credit_card_terminal.update_attributes(params[:credit_card_terminal])
        format.html { redirect_to @credit_card_terminal, notice: 'Credit card terminal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @credit_card_terminal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_card_terminals/1
  # DELETE /credit_card_terminals/1.json
  def destroy
    @credit_card_terminal = CreditCardTerminal.find(params[:id])
    @credit_card_terminal.destroy

    respond_to do |format|
      format.html { redirect_to credit_card_terminals_url }
      format.json { head :no_content }
    end
  end
end

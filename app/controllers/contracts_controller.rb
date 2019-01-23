# require 'pry'
class ContractsController < ApplicationController
  def new
    if @current_user.admin == "Buyer"

    @contract = Contract.new
    if session[:work]!= nil && session[:work]["user_id"] != nil
      @seller_id = session[:work]["user_id"].to_i
    else
      @seller_id = 0
    end
    @users = User.where.not(:admin => 'Buyer')
  else
    @msg = "Access Denied"
    redirect_to "/error/#{@msg}"
  end
  end
  def index
    session[:work] = nil
    # @contracts = Contract.where(:user_id => @current_user.id)
    @user = User.find_by :id => @current_user.id
    if @current_user.admin == "Buyer"
    @contracts = @user.buyer_contracts
    else
    @contracts = @user.seller_contracts
    end
    # binding.pry
  end
  def show
    @user = User.find_by :id => @current_user.id
    # binding.pry
    if @current_user.admin == "Buyer"
      @contract = @user.buyer_contracts.where(:id => params[:id])
    else
      @contract = @user.seller_contracts.where(:id => params[:id])
    end

  end
  def edit
    @users = User.where.not(:admin => 'Buyer')
    @contract = Contract.find params[:id]
    if @current_user.admin != "Buyer"
      @disable = true
    elsif @current_user.admin == "Buyer" && @contract.status != "New"
      @disable = true
    else
      @disable = false
    end
  end
  def create
    contract = Contract.new contracts_params
    contract.user_id = @current_user.id
    # binding.pry

    # contract.seller_id = session[:work]["user_id"]
    contract.save
    redirect_to contracts_path
  end

  def update
    contract = Contract.find params[:id]
    contract.update contracts_params
    redirect_to contract
  end
  def destroy
    contract = Contract.find params[:id]
    contract.destroy
    redirect_to contracts_path
  end
  def contracts_params
    params.require(:contract).permit(:title,:user_id,:seller_id,:description,:contract_from,:contract_to,:status,:amount,:services)
  end
end

class ContractsController < ApplicationController
  def new
    @contract = Contract.new
  end
  def index
    @contracts = Contract.all
  end
  def create
    contract = Contract.new contracts_params
    contract.user_id = @current_user.id
    contract.seller_id = session[:work]["user_id"]
    contract.save
    redirect_to contracts_path
  end
  def contracts_params
    params.require(:contract).permit(:user_id,:seller_id,:description,:contract_from,:contract_to,:status)
  end
end

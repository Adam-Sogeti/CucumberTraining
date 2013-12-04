class Account

  attr_accessor :account_balance, :account_type

  @account_balance

  def initialize(type_of_account)
    @account_type = type_of_account
    @account_balance = 0
  end

  def deposit(amount_deposited)
    @account_balance += amount_deposited.to_i
  end
end
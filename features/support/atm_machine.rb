class ATMMachine

  attr_accessor :account_used

  def initialize(account)
    @account_used = account
  end

  def request(requested_amount)
    if @account_used.account_balance > requested_amount.to_i
      @account_used.account_balance -= requested_amount.to_i
      requested_amount
    else
      'Insufficient Funds'
    end
  end

end
Given(/^I have deposited \$(\d+) in my (.*) Account$/) do |amount, account|
  case account
    when 'Savings'
      @new_account = Account.new('savings')
    when 'Checking'
      @new_account = Account.new('checking')
    else
      @new_account = Account.new('other')
  end
  @new_account.deposit(amount)
end

When(/^I request \$(\d+) from an ATM Machine$/) do |arg1|
  @new_atm_machine = ATMMachine.new(@new_account)
  @return_value = @new_atm_machine.request(arg1)
end

Then(/^I should receive \$(\d+)$/) do |arg1|
  raise('Wrong amount dispensed)') unless arg1.eql?(@return_value)
end

Then(/^I should receive an Insufficient Funds error message$/) do
  raise('Incorrect Error Message') unless @return_value.eql?('Insufficient Funds')
end

And(/^I will have a (Checking|Savings) Account balance of \$(\d+)$/) do |account, amount|
  raise('Incorrect Account balance') unless amount.to_i.eql?(@new_account.account_balance)
end
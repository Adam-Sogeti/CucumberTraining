Given(/^I have a calculator$/) do
  @new_calculator = Calculator.new
end

And(/^I start with a (\d+\.?\d*)$/) do |start_value|
    @new_calculator.start_with(start_value)
end

When(/^I (.*) a value of (\d+\.?\d*)$/) do |operation, value|
  if operation.eql?('add')
    @new_calculator.add(value)
  elsif operation.eql?('subtract')
    @new_calculator.subtract(value)
  elsif operation.eql?('multiply')
    @new_calculator.multiply(value)
  elsif operation.eql?('divide')
    @new_calculator.divide(value)
  else
    raise('Unknown operation')
  end
end

Then(/^I will have a total of (\d+\.?\d*)$/) do |expected_total|
  if expected_total.include?('.')
    raise('Incorrect value') unless @new_calculator.total.eql?(expected_total.to_f)
  else
    raise('Incorrect value') unless @new_calculator.total.eql?(expected_total.to_i)
  end
end

When(/^I have a less than value of (\d+)$/) do |less_than_value|
  @result = @new_calculator.less_than(less_than_value).to_s
end

When(/^I have a greater than value of (\d+)$/) do |arg1|
  @result = @new_calculator.greater_than
end
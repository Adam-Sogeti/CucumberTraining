Given(/^"(.*?)" is a simple string$/) do |reference_string|
  @reference_string = reference_string
end

When(/^I select the (\d+) character$/) do |character_position|
  @result = @reference_string[character_position.to_i - 1]
  puts @result
end

Then(/^I will have "(.*?)"$/) do |expected_result|
  raise('Selection did not work') unless @result.eql?(expected_result)
end

When(/^I select (\d+) characters starting with the (\d+) character$/) do |number_of_chars, starting_char|
  @result = @reference_string[starting_char.to_i - 1, number_of_chars.to_i]
  puts @result
end

When(/^I (downcase|upcase|Lstrip|Rstrip|Strip) the string$/) do |action|
  case action
    when 'downcase'
      @result = @reference_string.downcase
    when 'upcase'
      @result = @reference_string.upcase
    when 'Lstrip'
      @result = @reference_string.lstrip
    when 'Rstrip'
      @result = @reference_string.rstrip
    when 'Strip'
      @result = @reference_string.strip
    else
      raise("unknown action #{action}")
  end
  puts @result
end

When(/^I check if empty the string$/) do
  @result = @reference_string.empty?.to_s
end

When(/^I length the string$/) do
  @result = @reference_string.length.to_s
end

When(/^I see if it includes the string "(.*?)"$/) do |included_string|
  @result = @reference_string.include?(included_string).to_s
end
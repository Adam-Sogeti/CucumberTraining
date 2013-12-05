class GoogleHomePage
  include PageObject

  page_url('www.google.com')

  text_field(:search, :id => 'gbqfq')

  button(:google_search, :name => 'btnG')
end
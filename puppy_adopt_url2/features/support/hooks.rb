Before do
  @browser=Watir::Browser.new :ie
end

After do
  @browser.close
end
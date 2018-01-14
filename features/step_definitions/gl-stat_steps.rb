When /^I get help for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} help`)
end

When /^I get about for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} about`)
end

# Add more step definitions here

Before do
  @aruba_timeout_seconds = 100
end

When /^I get help for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} help`)
end

When /^I get about for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} about`)
end

When /^I get home for "([^"]*)"$/ do |app_name|
  @app_name = app_name
  step %(I run `#{app_name} home`)
end

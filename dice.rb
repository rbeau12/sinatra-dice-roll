
require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  "<h1>My page</h1>
  <ul><li><a href='/dice/2/6'> Roll two six sided dice</a></li>
  <li><a href='/dice/2/10'>Roll two ten sided dice</a></li>
  <li><a href='/dice/1/20>Roll one twenty sided dice</a></li>
  <li><a href='/dice/5/4'>Roll five four sided dice</a></li>"
end

get("/howdy") do
  return "Hello,world"
end

get("/zebra") do
  "We must add a route for each path we support "
end


get("/giraffe") do
  "This should show"
end

get("/dice/2/6") do
  first_roll=rand(1..6)
  second_roll=rand(1..6)
  sum=first_roll+second_roll
  outcome="You rolled a #{first_roll} and a #{second_roll} for a total of #{sum}" 

  "<h1>2d6</h1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_roll=rand(1..10)
  second_roll=rand(1..10)
  sum=first_roll+second_roll
  outcome="You rolled a #{first_roll} and a #{second_roll} for a total of #{sum}"

  "<h1>/dice/2/10</h1>
  <p>#{outcome}</p>}"
end

get("/dice/1/20") do
  first_roll=rand(1..20)
  outcome="you rolled a #{first_roll}"
  "<h1>dice/1/20</h1>
  <p>#{outcome}</p>"
end

get("/dice/5/4") do
  first_roll=rand(1..4)
  second_roll=rand(1..4)
  third_roll=rand(1..4)
  fourth=rand(1..4)
  outcome="you rolled a #{first_roll}"
  "<h1>dice/1/20</h1>
  <p>#{outcome}</p>"
end

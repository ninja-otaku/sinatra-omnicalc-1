require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end


get("/square/new") do
  erb(:homepage)
end

get("/") do
 erb(:homepage)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result =@the_num **2
  erb(:new_square_calc)
end


get("/square_root/results") do
  @the_number = params.fetch("user_number").to_f
  @the_result=@the_number**(0.5)
  erb(:square_root)
end


get("/square_root/new") do
  erb(:square_root_home)
end



get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @principal = params.fetch("user_pv").to_f
  @the_result=((@the_apr/(100*12))*@principal)/(1-(1+(@the_apr/(100*12)))**(-@years*12))
  erb(:payment)
end


get("/payment/new") do
  erb(:payment_home)
end

get("/random/new") do
  erb(:random_home)
end


get("/random/results") do
  @the_min = params.fetch("user_min").to_f
  @the_max = params.fetch("user_max").to_f
  @the_result=rand(@the_min..@the_max)
  erb(:random)
end

class ApplicationController < Sinatra::Base
  
  set :default_content_type, 'application/json'

  get '/staffs' do
       staff = Staff.all
      staff.to_json
  end

  get '/ships' do
    ship = Ship.all
   ship.to_json
  end

  post '/staffs' do
    staff = Staff.create(
    name:params[:name],
    age:params[:age],
    gender:params[:gender],
    occupation:params[:occupation])
    staff.to_json
  end

  patch '/staffs' do
    staff = Staff.update(
    name:params[:name],
    age:params[:age],
    gender:params[:gender],
    occupation:params[:occupation])
    staff.to_json
  end

  post '/ships' do
    ship = Ship.create(
    vessel:params[:vessel],
    built:params[:built],
    gt:params[:gt],
    size:params[:size])
    ship.to_json
  end

  patch '/ships' do
    ship = Ship.update(
    vessel:params[:vessel],
    built:params[:built],
    gt:params[:gt],
    size:params[:size])
    ship.to_json
  end

  delete '/ships/:id' do
    ship = Ship.find(params[:id])
    ship.destroy
    ship.to_json
  end

  delete '/staffs/:id' do
    staff = Staff.find(params[:id])
    staff.destroy
    staff.to_json
  end

 

  # get '/' do
  #   '<h2>Hello <em>World</em>!</h2>'
  # end

end
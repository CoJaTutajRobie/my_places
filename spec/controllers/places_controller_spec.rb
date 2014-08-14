require 'rails_helper'


#describe "controllers/places_controller.rb" do
RSpec.describe PlacesController, :type => :controller do

  setup do
    @place = places(:one)
  end

  #it "should get index" do
  #  get :index
#	expect(response).to be_success
   # assert_not_nil assigns(:places)
 # end
describe "GET #index" do 
it "should get index" do
get :index
expect(response).to be_success
end 
end


 
  it "should get new" do
    get :new
	expect(response).to be_success
  end


  it "should create place" do
change(Place, :count) do
   # assert_difference('Place.count') do
      post :create, place: { address: @place.address, description: @place.description, latitude: @place.latitude, longitude: @place.longitude }
    end

    #assert_redirected_to place_path(assigns(:place))
  end

  it "should show place" do
     redirect_to :action => "show", :id => @place
#id: @place
expect(response).to be_success
  end

  it "should get edit" do
redirect_to :action=>"edit", :controller=>"places", :id=>nil
    #get :edit, id: @place
expect(response).to be_success
  end

  it "should update place" do
redirect_to :action=>"update", :controller=>"places", :id=>nil, :place=>{:adress=>nil, :description=>nil, :latitude=>nil, :longitude=>nil}
#@attr = { :adress => @place, :description => @place , :description => @place , :latitude => @place , :longitude => @place }
#put :update, :id => @place, :place => @attr

  # put :update, :id => @place, place: { address: @place.address, description: @place.description, latitude: @place.latitude, longitude: @place.longitude }
  #  assert_redirected_to place_path(assigns(:place))
  end

  it "should destroy place" do
change(Place, :count).by(-1) do
    #assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end
 #assert_redirected_to places_path
  end
end


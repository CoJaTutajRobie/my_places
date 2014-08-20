require 'rails_helper'

RSpec.describe PlacesController, :type => :controller do

  setup do
    @place = places(:one)
  end

describe "GET #index" do 
it "should get index" do
get :index
expect(response).to be_success
expect(response.status).to eq(200)
end 
it "check if renders index" do
get :index
expect(response).to render_template :index
end
it "check if all places load" do
place1, place2 = Place.create!, Place.create!
get :index
expect(assigns(:places)).to match_array([place1,place2])
end
end

describe "NEW" do
  it "should get new" do
    get :new
	expect(assigns(:place)).to be_a_new(Place)
  end
it "respounds success 200" do
  get :new
	expect(response).to be_success
expect(response.status).to eq(200)
end
it "renders template" do
  get :new
expect(response).to render_template :new
end
end

describe "CREATE" do
  it "should create place" do
change(Place, :count) do
      post :create, place: { address: @place.address, description: @place.description, latitude: @place.latitude, longitude: @place.longitude }
    end
  end
end

describe "SHOW" do
  it "should show place" do
     redirect_to :action => "show", :id => @place
expect(response).to be_success
  end
end

describe "EDIT" do
  it "should get edit" do
redirect_to :action=>"edit", :controller=>"places", :id=>nil
expect(response).to be_success
  end
end

describe "UPDATE" do
  it "should update place" do
redirect_to :action=>"update", :controller=>"places", :id=>nil, :place=>{:adress=>nil, :description=>nil, :latitude=>nil, :longitude=>nil}
  end
end

describe "DELETE" do
  it "should destroy place" do
change(Place, :count).by(-1) do
      delete :destroy, id: @place
    end
  end
end

describe "invalid params" do 
it "adres" do
allow_any_instance_of(Place).to receive(:save).and_return(false)
post :create, {:place => {"address" => "123"}}
expect(assigns(:place)).to be_a_new(Place)
end
it "opis" do
allow_any_instance_of(Place).to receive(:save).and_return(false)
post :create, {:place => {"description" => "@#%$#^#$@"}}
expect(assigns(:place)).to be_a_new(Place)
end
it "latitude" do
allow_any_instance_of(Place).to receive(:save).and_return(false)
post :create, {:place => {"latitude" => "asdasd"}}
expect(assigns(:place)).to be_a_new(Place)
end
it "longitude" do
allow_any_instance_of(Place).to receive(:save).and_return(false)
post :create, {:place => {"longitude" => "asasfsdg"}}
expect(assigns(:place)).to be_a_new(Place)
end
it "re-renders new" do
allow_any_instance_of(Place).to receive(:save).and_return(false)
post :create, {:place => {:adress=>"123", :description=>"@#%$#^#$@", :latitude=>"asdasd", :longitude=>"asasfsdg"}}
expect(assigns(:place)).to be_a_new(Place)
end
end
end


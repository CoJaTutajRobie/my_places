require 'rails_helper'
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
it "renders list of places" do
render
assert_select "th", :text => "Szerokość".to_s, :count => 1
assert_select "th", :text => "Długość".to_s, :count => 1
assert_select "th", :text => "Adres".to_s, :count => 1
assert_select "th", :text => "Opis".to_s, :count => 1
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
it "check if there is a show buttons" do
render
assert_select "a", :text => 'Wyświetl', :count => 2
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
it "check if there is a edit button after login" do
@place = Place.create
session[:place_id] = @place.id
render
assert_select "a", :text => 'Edytuj', :count => 2
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
it "check if there is a destroy button after login" do
@place = Place.create
session[:place_id] = @place.id
render
assert_select "a", :text => 'Usuń', :count => 2
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
it "check if there is a new place button" do
@place = Place.create
session[:place_id] = @place.id
render
assert_select "a", :text => 'Dodaj nowe miejsce', :count => 1
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
end
describe "places/index" do
before(:each) do
assign(:places, Kaminari.paginate_array(
[
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
),
stub_model(Place,
:latitude => "",
:longitude => "",
:address => "warsaw",
:description => "stolica",
:place_id => ""
)
]).page(1)
)
end
end

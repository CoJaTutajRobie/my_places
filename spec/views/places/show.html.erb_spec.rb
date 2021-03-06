require 'rails_helper'

describe "places/show.html.erb" do

 before do
   assign(:place, Place.new(:id => "1"))
  end

  it "display latitude" do
    render
    expect(rendered).to include("Szerokość:")
  end

  it "display longitude" do
    render
    expect(rendered).to include("Długość:")
  end

  it "display address" do
    render
    expect(rendered).to include("Adres:")
  end

  it "display description" do
    render
    expect(rendered).to include("Opis:")
  end

  it "display back link" do
    render
    expect(rendered).to include("Wróć")
  end

  it "display edit link" do
    render
    expect(rendered).to include("Edytuj")
  end


end

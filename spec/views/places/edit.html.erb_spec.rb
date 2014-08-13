require 'rails_helper'

describe "places/edit.html.erb" do

 before do
   assign(:place, Place.new(:id => "1"))
  end

  it "display latitude" do
    render
    expect(rendered).to include("Edycja miejsca")
  end

  it "display longitude" do
    render
    expect(rendered).to include("Wyświetl")
  end

  it "display address" do
    render
    expect(rendered).to include("Wróć")
  end

  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end


end

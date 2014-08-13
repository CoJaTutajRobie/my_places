require 'rails_helper'

describe "places/new.html.erb" do

 before do
   assign(:place, Place.new(:id => "1"))
  end

  it "display header" do
    render
    expect(rendered).to include("Nowe miejsce")
  end

  it "renders _form partial" do
    render
    expect(view).to render_template(:partial => "_form", :count => 1)
  end

  it "display back link" do
    render
    expect(rendered).to include("Wróc")
  end

end

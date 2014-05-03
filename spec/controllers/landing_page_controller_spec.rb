require 'spec_helper'

describe LandingPageController do
  it "renders the index" do
    get :index
    expect(response).to render_template("index")
  end
end

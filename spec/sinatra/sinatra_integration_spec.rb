require "spec_helper"

require_relative "app"

describe "Integrating with Sinatra", type: :feature, js: true do
  it "compiles the javascript" do
    Capybara.app = SinatraSample

    visit "/"

    expect(page).to have_content("Hello, World!")
  end
end

require "spec_helper"

require_relative "rails4/config/environment"

describe "Integrating with Rails", type: :feature, js: true do
  it "compiles the javascript" do
    Capybara.app = Rails.application

    visit "/"

    expect(page).to have_content("Hello, World!")
  end
end

require 'rails_helper'

describe "Project Show Page" do
  it "displays a project's name, material, and challenge theme" do
    recycled_material_challenge = Challenge.create(theme: "Recycled Material", project_budget: 1000)
    news_chic = recycled_material_challenge.projects.create(name: "News Chic", material: "Newspaper")

    visit "/projects/#{news_chic.id}"

    expect(page).to have_content("Project: News Chic")
    expect(page).to have_content("Material: Newspaper")
    expect(page).to have_content("Challenge: Recycled Material")
  end
end

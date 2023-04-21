# frozen_string_literal: true

require "rails_helper"

RSpec.describe NavbarComponent, type: :component do

  it "présence du lien Accueil dans la navbar" do
    render_inline(NavbarComponent.new)
    expect(page).to have_link("Accueil")
  end

end

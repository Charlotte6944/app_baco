require "rails_helper"

RSpec.describe HeaderAdminComponent, type: :component do
  it "Le titre passé au composant est présent sur la page" do
    render_inline(HeaderAdminComponent.new(titre: "Test admin"))
    expect(page).to have_content("Test admin")
  end

  it "Le logo du baco est présent sur la page" do
    render_inline(HeaderAdminComponent.new(titre: "Test admin"))
    expect(page).to have_css("img[alt*='logo baco']")
  end
end

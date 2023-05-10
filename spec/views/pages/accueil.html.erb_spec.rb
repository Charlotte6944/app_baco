require 'rails_helper'

RSpec.describe "pages/accueil", type: :view do

  login_admin

  it "affiche la liste des utilisateurs" do
    # expect(pages_accueil_path).to have_content "Nom : #{@utilisateur.nom_usage}"
    pending "add some examples (or delete) #{__FILE__}"
  end

end

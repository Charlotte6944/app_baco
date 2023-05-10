require 'rails_helper'

RSpec.describe "Pages", type: :controller do

  before do
    @controller = PagesController.new
  end

  describe "Si l'utilisateur est loggé en tant qu'administrateur" do
    login_admin

    it "GET #accueil" do
      get :accueil
      expect(response).to render_template(:accueil)
    end
  end

  describe "Si l'utilisateur n'est pas loggé" do
    it "GET #accueil" do
      get :accueil
      expect(response).to redirect_to(new_utilisateur_session_path)
    end
  end

  describe "Si l'utilisateur est loggé en tant que joueur" do

    login_joueur

    it "GET #accueil" do
      get :accueil
      expect(response).to redirect_to(new_utilisateur_session_path)
    end
  end
end

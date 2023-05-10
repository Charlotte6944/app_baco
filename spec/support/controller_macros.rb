module ControllerMacros
  def login_admin
    # Before each test, create and login the user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:utilisateur]
      user = FactoryBot.create(:utilisateur, role: "admin")
      # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user
    end
  end

  def login_joueur
    # Before each test, create and login the user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:utilisateur]
      user = FactoryBot.create(:utilisateur, role: "joueur")
      # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      user.role = "joueur"
      sign_in user
    end
  end
end

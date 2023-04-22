Given('utilisateur se connectant') do |table|
  table.hashes.each do |hash|
    @utilisateur = Utilisateur.create!(hash)
  end
end

When('je suis sur la page accueil') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('je vois le tableau de tous les utilisateurs') do
  pending # Write code here that turns the phrase above into concrete actions
end

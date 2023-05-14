Given('un utilisateur administrateur est connecté') do
  @admin = Utilisateur.create!(email: 'test@test.com', password: 'password', role: 'admin')
  visit new_utilisateur_session_path
  fill_in 'email', with: @admin.email
  fill_in 'password', with: @admin.password
  click_button 'Connexion'
end

Given('la base comprend une liste d utilisateur') do
  utilisateur = Utilisateur.create!(email: 'test1@test.com', password: 'password1', role: 'joueur')
  utilisateur2 = Utilisateur.create!(email: 'test2@test.com', password: 'password2', role: 'joueur')
  utilisateur3 = Utilisateur.create!(email: 'test3@test.com', password: 'password3', role: 'entraineur')
  utilisateur4 = Utilisateur.create!(email: 'test4@test.com', password: 'password4', role: 'admin')
  utilisateur5 = Utilisateur.create!(email: 'test5@test.com', password: 'password5', role: 'joueur')
  @utilisateurs = Utilisateur.all
end

When('Je suis sur la page d accueil') do
  visit accueil_path
end

Then('Je vois la liste des utilisateurs') do
  expect(page).to have_content("Liste des membres")
  @utilisateurs.each do |utilisateur|
    expect(page).to have_content(utilisateur.email)
    expect(page).to have_content(utilisateur.role)
    expect(page).to have_content(utilisateur.nom_usage)
    expect(page).to have_content(utilisateur.prenom)
    expect(page).to have_content(utilisateur.date_naissance)
    expect(page).to have_content(utilisateur.num_licence)
    expect(page).to have_content(utilisateur.actif)
    expect(page).to have_content(utilisateur.adresse_contact)
    expect(page).to have_content(utilisateur.code_postal)
    expect(page).to have_content(utilisateur.ville)
    expect(page).to have_content(utilisateur.pays)
    expect(page).to have_content(utilisateur.tel_contact)
    expect(page).to have_content(utilisateur.sexe)
  end
end

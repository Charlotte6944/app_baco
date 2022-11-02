User.destroy_all

puts "Creating users..."

# Creation d un joueur et administrateur

User.create!(
  email: 'charlotte@baco.fr',
  password: '123456',
  password_confirmation: '123456',
  nom: 'MARION',
  prenom: 'Charlotte',
  date_naissance: '1989-05-09',
  num_tel: '06 77 38 47 96',
  num_licence: '07359004',
  role: 'admin',
  sexe: 'F',
  actif: true
)

puts "1 user admin created"

require 'csv'

#Suppression des données existantes
Inscription.destroy_all
Entrainement.destroy_all
# Utilisateur.destroy_all
if Saison.where(periode: "22-23").empty?
  Saison.destroy_all
end
# Facturation.destroy_all

#Création de la saison 22-23
puts "Création de la saison 22-23"
if Saison.where(periode: "22-23").empty?
  Saison.create(periode: "22-23")
end
puts "Fin de création de la saison 22-23"

#Création d'un utilisateur entraineur
entraineur = Utilisateur.create(
  id: 1,
  email: 'entraineur@baco.fr',
  nom_usage: 'Test',
  prenom: 'Entraineur',
  password: 'bacoEntraineur',
  role: 'entraineur',
)

#Création des entrainements
if Entrainement.where(utilisateur_id: 1).empty?
  if Entrainement.where(utilisateur_id: 1)
    entrainement = Entrainement.create(
      utilisateur_id: 1,
      saison_id: Saison.find_by(periode: "22-23").id,
      jour: 'lundi',
      heure_debut: '19:30',
      heure_fin: '21:00',
      gymnase: 'Herzog',
      niveau: 'P12-D9',
    )
  end
end

#Création des licenciés, des entrainements, des inscriptions et de la facturation
puts "Création de la base de données avec le fichier csv du baco"

file = File.join(File.dirname(__FILE__), 'licencie.csv')
parsing = CSV.parse(File.open(file), headers: true)
licencies = []
parsing.each do |row|
  licencies << row
end

#Création des utilisateurs
i = 2
j = 0
while j < (licencies.length)
  # utilisateur = Utilisateur.create(
  #   id: i,
  #   email: licencies[j][25],
  #   nom_usage: licencies[j][1],
  #   nom_naissance: licencies[j][2],
  #   prenom: licencies[j][3],
  #   date_naissance: licencies[j][8],
  #   annee_naissance: licencies[j][9],
  #   pays_naissance: licencies[j][11],
  #   nationalite: licencies[j][12],
  #   num_licence: licencies[j][4].delete(' '), #Suppression des espaces dans le numéro de licence
  #   actif: true,
  #   departement: licencies[j][14],
  #   adresse_contact: licencies[j][15],
  #   code_postal: licencies[j][20],
  #   ville: licencies[j][21],
  #   pays: licencies[j][23],
  #   tel_contact: licencies[j][26],
  #   nom_tuteur: licencies[j][27],
  #   prenom_tuteur: licencies[j][28],
  #   fonction_tuteur: licencies[j][29],
  #   tel_tuteur: licencies[j][31],
  #   email_tuteur: licencies[j][30],
  #   nom_deuxieme_tuteur: licencies[j][32],
  #   prenom_deuxieme_tuteur: licencies[j][33],
  #   fonction_deuxieme_tuteur: licencies[j][34],
  #   tel_deuxieme_tuteur: licencies[j][36],
  #   email_deuxieme_tuteur: licencies[j][35],
  #   sexe: licencies[j][0],
  #   password: 'baco2022',
  # )

  # puts "utilisateur #{i}"

  # Création de la facturation
  # facturation = Facturation.create(
  #   id: i,
  #   tarif: licencies[j][50],
  #   cb_montant_paye: licencies[j][55],
  #   cb_commission: licencies[j][56],
  #   cb_montant_wallet: licencies[j][57],
  #   cb_montant_transfere: licencies[j][58],
  #   cb_montant_compense: licencies[j][59],
  #   attente_paiement: licencies[j][60],
  #   paye: licencies[j][61],
  #   date_paiement: licencies[j][62],
  #   option: licencies[j][63],
  #   reductions: licencies[j][64],
  #   justificatifs_fournis: licencies[j][65],
  #   date_valeur: licencies[j][66],
  #   montant_ttc: licencies[j][67],
  #   montant_recu: licencies[j][68],
  #   montant_restant: licencies[j][69],
  #   facture_payee: licencies[j][70],
  #   etat: licencies[j][71],
  # )

  # puts "facturation #{i}"

  #Création des inscriptions
  inscription = Inscription.create(
    id: i,
    utilisateur_id: i,
    saison_id: Saison.find_by(periode: "22-23").id,
    entrainement_id: entrainement.id,
    facturation_id: i,
    adherent_valide: licencies[j][38],
    reglement_interieur: licencies[j][39],
    interclub: licencies[j][42],
    aide_fonctionnement: licencies[j][43],
    aide_tournois: licencies[j][44],
    formation_arbitre: licencies[j][45],
    encadrement: licencies[j][46],
    activite_professionnelle: licencies[j][47],
    categorie: licencies[j][51],
    certificat_medical: licencies[j][53],
    date_certificat_medical: licencies[j][54],
  )

  puts "Inscription #{i}"

  i += 1
  j += 1

end

puts "La création de la base de données est terminée"

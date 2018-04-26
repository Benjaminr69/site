class User < ActiveRecord::Base
	has_many :advertisements
	has_many :comments

	validates :name, presence: {
		message: "Le nom d'utilisateur doit être renseigné"
	}

	validates :password, presence: {
		message: "Un mot de passe est obligatoire"
	}
end
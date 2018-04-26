class Advertisement < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: {
		message: "Le titre doit être renseigné"
	}

	validates :content, presence: {
		message: "Le contenu est obligatoire"
	}

	validates :price, presence: {
		message: "Le prix doit être renseigné"
	}
end
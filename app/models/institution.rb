class Institution < ApplicationRecord
	has_many :branches
 	validates :name, uniqueness: {message: "Ya existe una Institución con este nombre"},
        presence: { message: "El nombre de la Institución no puede quedar vacío"}
end

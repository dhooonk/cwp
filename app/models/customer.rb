class Customer < ApplicationRecord
has_many :custom_programs
has_many :programs, through: :custom_programs, source: :program
end

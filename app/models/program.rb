class Program < ApplicationRecord
    has_many :custom_programs
    has_many :customers, through: :custom_programs, source: :customer
end

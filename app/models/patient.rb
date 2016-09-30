class Patient < ApplicationRecord
    has_many :encounters, :dependent => :destroy
end

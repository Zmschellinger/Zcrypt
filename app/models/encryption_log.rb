class EncryptionLog < ApplicationRecord
    validates :filename, presence: true
    validates :body, presence: true, length: { minimum: 5 }
end

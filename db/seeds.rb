# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
EncryptionLog.create(filename: "file1.txt", date:"12/1/2023")
EncryptionLog.create(filename: "file2.txt", date:"12/2/2023")
EncryptionLog.create(filename: "file3.txt", date:"12/2/2023")


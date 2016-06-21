
user = User.create!(name: "George", address: "3 Reginald Lane", username: "test", cell_number: "(555) 555-5555",
                    zip_code: "5555", email:  "test_user@test.test", password: "password")
Pet.create!(user_id: user.id, name: "Sora", desc: "Fat, tortoise shell, kitty", category: "Cat", weight: "Damn")

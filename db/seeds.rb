
user = User.create!(name: "George", address: "3 Reginald Lane", username: "test", cell_number: "(555) 555-5555",
                    zip_code: "5555", email:  "test_user@test.test", password: "password")
Pet.create!(user_id: user.id,
            name: "Sora",
            desc: "Fat, tortoise shell, kitty",
            category: "Cat",
            weight: "Damn",
            lost_at: "2222A Guadalupe St Austin, TX 78705")

Pet.create!(user_id: user.id,
            name: "Blargh",
            desc: "Black with white paws, different colored toe pads",
            category: "Cat",
            weight: "Tiny body big butt",
            lost_at: "530E Graham Place Bloomington, IN 47401")

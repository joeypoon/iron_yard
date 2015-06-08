
15.times do
  Image.create photo_url: Faker::Avatar.image(Faker::Name.first_name, "500x500", "jpg")
end

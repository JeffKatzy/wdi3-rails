# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  nationality :string(255)
#  dob         :date
#  period      :string(255)
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

# == Schema Information
#
# Table name: paintings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :string(255)
#  medium     :string(255)
#  style      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)

Artist.delete_all
Painting.delete_all

Artist.create(name: "Vincent Van Gogh", nationality: "Dutch", dob: '1853/3/30', period: "Impressionism", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQAbcPYiqj34T0LlpTXlJxaP4NQiCPegsURAr2Bgl-vDy9cB31u-IbV7pS")
Artist.create(name: "Pablo Picasso", nationality: "Spanish", dob: "1881/10/25", period: "cubism", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5MpqX1XAa28rZcYY8b8MY36sZ46foxPisfPvmjWOKhdm6la1faaJFxQ")
Artist.create(name: "Salvador Dali", nationality: "Spanish", dob: "1904/5/11", period: "Surrealism", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8whNAViSaMEpw52xSMWgdat4qSRyEcBTegJvBUBfFHA1qGpVqo-fhTZVcuw")
Artist.create(name: "Henri Matisse", nationality: "French", dob: "1869/12/31", period: "Neo-impressionism", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgR1Vcf_xJNLfTvLUC5IUvuc4dKRNPNCBb6JTtnOkqgtubDgFaFQkDNoKpLA")
Painting.create(title: "Guernica", year: "1937", medium: "brush", style: "cubism", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP4Vvpoo9Dul81ZA4yZhF3wEK5kcUpND6Uq0IlHHJRHFDoObBKo0zSvnJd")
Painting.create(title: "Starry Night", year: "1889", medium: "brush", style: "landscape art", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzMsbAuG-M6d2-V5hzRomx8m5ZCo6P3wVdPwiInSMaAi-GBsfuNtgigPmydQ")
Painting.create(title: "The Persistence of Memory", year: "1931", medium: "oil", style: "Surrealism", image: "http://imgc.artprintimages.com/images/art-print/salvador-dali-the-persistence-of-memory-c-1931_i-G-8-802-IGVI000Z.jpg")
Painting.create(title: "Dishes and Fruit", year: "1901", medium: "oil", style: "modern", image: "http://upload.wikimedia.org/wikipedia/en/thumb/4/47/Matisse_-_Dishes_and_Fruit_%281901%29.jpg/140px-Matisse_-_Dishes_and_Fruit_%281901%29.jpg")
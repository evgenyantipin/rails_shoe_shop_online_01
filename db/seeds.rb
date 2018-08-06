User.create!(name: "Example User", email: "example@railstutorial.org",
  password: "123456", password_confirmation: "123456", role: 1,
  activated: true, activated_at: Time.zone.now)

User.create!(name: "Linh Xinh", email: "example1@railstutorial.org",
  password: "123456", password_confirmation: "123456", role: 2,
  activated: true, activated_at: Time.zone.now)

100.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password, activated: true,
    role: Faker::Number.between(0,2), activated_at: Time.zone.now)
end

category_names = ["Athletic", "Skechers", "Flats", "Boots", "Wild Diva", "Sandals", "Dyeables", "Heels", "Ellie", "Slippers"]

trademark = ["Scallop", "Pajama", "Gingham", "Sylvie", "Taos"]

category_names.each do |name|
  Category.create!(name: name, trademark: trademark.sample, status: [0, 1].sample)
end

shoe_name = [
  "Pedicure Spa Toe", "Nude Wedge", "Sof Comfort", "Sneed Dance", "Open Toe Canvas", "Pointed Toe Suede", "Lugz Zen", "Pureflex", "Open Toe Synthetic", "Suede Collonil Cleaner", "Ankle", "Faux Leather", "Patent Retro", "Slouch", "Western Rain", "Synthetic Wedge", "Mid Calf", "Peep-toe Leather", "Knee High", "Leather Flat"
]

shoe_img = [
  "https://i5.walmartimages.com/asr/af97324c-4695-4315-8289-3006d1346f43_1.62c732d0bd4c9e90f6c57edbdd31e32c.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/9cdc0e0c-bd66-46b1-b89c-c91e54c9ac0e_1.9d82eee7ae19f1c78dab51bca08e19ec.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/ac4c316f-4bc1-4a99-ab71-e7dee02c70c0_1.3f76a62b9d816ccdbb6c2d2ff1b9a4df.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/5e2bf844-9476-43a5-a14d-57dfc9847e09_1.9de51f38032e71d92e925326ab9546b9.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/20e1735e-44ea-4ad6-9ace-64188c6ef8bc_1.4fde13fb4e757e15c44a71aa0fd9cfe2.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/a46ef448-e801-4ee0-bd8d-520dcaa2f643_1.39c73d679bd75455089b01d2f1bbb93f.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/3990181c-1f37-41e0-b04d-22428da90578_1.8a58be48c716c061cda8fae137ba6002.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/1b12adab-1d6b-453e-947c-b2f90f4858dc_1.1016a08f58ee271aee4692088ac3d06a.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/a07174df-7c83-4d89-8016-ece1b1141407_1.3105bda08d51dd55a5773efe1d109dd2.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/3497480e-530d-4751-8d3a-6ababa181341_1.5b0d882a1d2b835839b3f90155a9c653.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/56a0b995-8a6c-4c75-808f-0d6863f46018_1.b5ebc5e7651011fc9cd2affa0de92025.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/59a1b430-299b-48ac-8246-ce69e4215892_1.4731120a7193274d8f676f986e4a2f35.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/42fa5d6a-de2f-4898-a25f-c39b74dbb175_1.e09918f2786f0e80436ee6113066b848.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/a7dd3875-2d95-47cb-bba9-eb58cd039c49_1.6641d229e971442c61fa18b662643147.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/dae9a4d7-72fe-4edf-9a91-3ccdbcfdd0eb_1.7ebd06541ffb64f61568eb0c892a74df.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/7bd8cdef-d6aa-4f3e-85f1-c75afd920dcc_1.2c85dbf079d5e5076b864e34411bd79c.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/aaf29b0f-1084-4aeb-bd5f-fbf8caa23b3e_1.b573530ea8981ab49801d55adcb9075e.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/618db1da-b499-43b9-a4e3-c853d5ded2ff_1.7b409eaa90ea9a7f2435a15dc875acfc.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/d8affc2c-a6b3-4ea0-a725-9a04c86b6344_1.179981e08d182d401a4eac96dd0c19a3.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/3dc9c088-f9f0-431c-8ad3-6dfdb8bf72d7_1.da7461dbb8fcb9b1271f71671dd393e3.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/f3e9ebfe-b7b0-4e9e-a2b6-f25c4ef846b2_1.79be30a7525e27abec2b7997b2e21635.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/4eca9ed8-19b6-4cb1-9d6f-4120db6ee222_1.f9edc4e6dfd767f3f72521c7a7edd899.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/1f446144-39be-4a19-b664-443911bb3952_1.361e20d1b02cdd9c4fe64daa064b65bb.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/454207c2-4567-41d3-b50b-821274830ebd_1.4d569429af43c5057bb2664b2d8fd655.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/085a37c0-6e79-4a48-b489-d9267d77071d_1.a9050e4adac8ea38c88215411eaffcca.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/b208a48c-0796-453c-9590-2081473f2759_1.6b17af66c0b228e4abebc88aabfd5e03.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/c21ae913-7d44-4e4e-8358-4a8723a3c3e2_1.c3e1c5445ab5279a384c9a4724d19f69.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/cbcd0a07-71c8-4587-9407-adc4a69bd5df_1.2cfc8437a567fe37894b8dd8dd2d30fe.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/32d3a55e-c282-4927-a570-ee0f322d03d2_1.2718e22e8d0da164cc9368abf10a9757.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/3cac504a-3a62-41b2-ac22-a8b74045d6bb_1.210f1702449c5278617a431ed457a5e1.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/7362bfcf-038c-4f48-aeaf-cc6a704aadf1_1.0d77377f8e9bb06789f4d8a776374e24.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/55fc9ec2-7cba-48fa-b8c1-d9e1ebac6c5c_1.f16acaf43b95380059d953e261c534c0.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/5dba9552-2391-40f3-a679-7778898ebc34_1.b19124771c3db81acf6c0d5fc0518956.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/a636369b-37b7-44f8-8e0f-62d54303bc8c_1.7e200ce563a3bf67577bcfbf807852f5.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/225e509e-a792-4a27-82df-0c8f7e8bd7a3_1.c23c67ffa4cd023a111a3cffece46ed1.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/45bcf5d3-ced6-4c77-92fc-2eb92560fe77_1.f5e549666910040d5d6c5bd1425dcf34.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/30caf6ce-4989-4b3b-86e1-df257808753c_1.125ea6f81a3124d3531577bf045caf0e.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/2ac9fa3c-8c0f-4be2-87a7-f1f36e0bdbaf_1.ddb4979b9dfb9d1115b1968bfc1c343d.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/48c8ca66-c89d-474c-b82c-b4cd33db014e_1.59531da0a17b137f09561cc5841871c1.jpeg?odnHeight=250&odnWidth=250",
  "https://i5.walmartimages.com/asr/f6653170-bb1a-4a25-afdf-2627cef52c7b_1.a38ebc8bbaae28e14dc0f87179f1205a.jpeg?odnHeight=450&odnWidth=250"
]

200.times do
  category_id = rand(1..10)
  name = [shoe_name.sample, category_names[category_id]].join(" ")

  Shoe.create!(
    name: name, quantity: rand(20..100), price: Faker::Commerce.price,
    description: Faker::Lorem.paragraphs, img_url: shoe_img.sample,
    category_id: category_id
  )
end

20.times do
  Discount.create!(
    start_date: Faker::Date.between(20.days.ago, Date.today),
    end_date: Faker::Date.between(Date.today, 20.days.from_now),
    percent: [10, 20, 30, 40, 50, 60, 70].sample,
    shoe_id: rand(1..20)
  )
end

puts "🌱 Seeding spices..."

puts "Seeding Projectss..."
client1 = Project.create(
    name: "Client 1",
)

client2 = Project.create(
    name: "Client 2",
)

client3 = Project.create(
    name: "Client 3",
)

client4 = Project.create(
    name: "Client 4",
)


puts "Seeding boards..."
client1_backlog = client1.boards.build(name: 'Backlog')
client1_todo = client1.boards.build(name: 'To Do')
client1_completed = client1.boards.build(name: 'Completed')
client1.save


client2_backlog = client2.boards.build(name: 'Backlog')
client2_todo = client2.boards.build(name: 'To Do')
client2_completed = client2.boards.build(name: 'Completed')
client2.save

client3_backlog = client3.boards.build(name: 'Backlog')
client3_todo = client3.boards.build(name: 'To Do')
client3_completed = client3.boards.build(name: 'Completed')
client3.save


puts "Seeding tasks..."
client1_todo.tasks.create(
    name: 'Homepage WK40',
    date_due: Date.new(2023,5,1),
    description: '',
    completed: false
)

client1_todo.tasks.create(
    name: 'Flyout Images',
    date_due: Date.new(2023,5,1),
    description: '',
    completed: false
)


client1_todo.tasks.create(
    name: "Banner - B3JBQ - Free Shipping on 59",
    date_due: Date.new(2023,5,1),
    description: 'Global Banner - B3JBQ - Free Shipping on 59\nGlobal Disclaimer -  B3JBQ - Free Shipping on 59\nCheckout Banner - B3JBQ - Free Shipping on 59',
    completed: false
)

client1_todo.save


client1_completed.tasks.create(
    name: 'Homepage Clickmap Changes',
    date_due: Date.new(2023,3,29),
    description: '',
    completed: true
)

client1_completed.save

client2_todo.tasks.create(
    name: 'Banner - Banner - DD994 - 25 Dollars Off 100 FSH 100',
    date_due: Date.new(2023,3,29),
    description: 'promo code only\nBanner - Banner - DD994 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DD994 - 25 Dollars Off 100 FSH 100\nHomepage - Banner - DD994 - 25 Dollars Off 100 FSH 100',
    completed: true
)

client2_todo.tasks.create(
    name: 'Banner - DND139 - 25 Off 100 FSH 100',
    date_due: Date.new(2023,4,29),
    description: 'promo code only\nGlobal Banner - Banner - DND139 - 25 Off 100 FSH 100\nGlobal Disclaimer - Banner - DND139 - 25 Off 100 FSH 100\nHomepage - Banner - DND139 - 25 Off 100 FSH 100',
    completed: false
)

client2_todo.tasks.create(
    name: 'Promo Code TEST',
    date_due: Date.new(2023,4,30),
    description: 'Global Banner - Banner - TEST - In Monetate\nGlobal Disclaimer - Banner - DND142 - 25 Dollars Off 100 FSH 100\nGlobal Disclaimer - Banner - DND141 - 25 Off 100 FSH 100\nGlobal Banner - Banner - TEST - In Monetate',
    completed: false
)

client2_todo.tasks.create(
    name: 'Workspace for Test',
    date_due: Date.new(2023,4,30),
    description: '',
    completed: false
)

client2_todo.save

client3_todo.tasks.create(
    name: 'Homepage Fall 3 WK40',
    date_due: Date.new(2023,5,1),
    description: '',
    completed: false
)

client3_todo.tasks.create(
    name: 'Banner - A21M3 - Up To 25 Off Sweaters Pants FSH 79',
    date_due: Date.new(2023,5,4),
    description: 'Global Banner - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nGlobal Disclaimer - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nClothing - Flyout Offer - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nTops - Flyout Offer - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nCoupons - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nDaily Offers - A21M3 - Up To 25 Off Sweaters Pants FSH 79\nHomePage - Banner - A21M3 - Up To 25 Off Sweaters Pants FSH 79',
    completed: false
)

client3_todo.tasks.create(
    name: 'Banner - client2 - 30 Off FSH 79',
    date_due: Date.new(2023,5,7),
    description: 'Global Banner - client2 - 30 Off FSH 79\nGlobal Disclaimer - client2 - 30 Off FSH 79\nClothing - Flyout Offer - client2 - 30 Off FSH 79\nTops - Flyout Offer - client2 - 30 Off FSH 79\nCoupons - client2 - 30 Off FSH 79\nDaily Offers - client2 - 30 Off FSH 79\nHomePage - Banner - client2 - 30 Off FSH 79',
    completed: false
)

client3_todo.save

puts "✅ Done seeding!"
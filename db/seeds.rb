# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
author_1 = Author.create(name: 'J.K. Rowling')
author_2 = Author.create(name: 'Virginia Woolf')

author_3 = Author.create(name: 'Jacqueline Susann')
author_3.books.create(title: 'Valley of the dolls')

author_4 = Author.create(name: 'Stephanie Danler')
author_4.books.create(title: 'Sweetbitter')

author_5 = Author.create(name: 'Han Kang')
author_5.books.create(title: 'The Vegetarian')


author_6 = Author.create(name: 'Colson Whitehead')
author_6.books.create(title: 'The Underground Railroad')

author_7 = Author.create(name: 'Yaa Gyasi')
author_7.books.create(title: 'Homegoing')

author_8 = Author.create(name: 'Kevin Kwan')
author_8.books.create(title: 'Crazy Rich Asians')

author_9 = Author.create(name: 'Shari Lapena')
author_9.books.create(title: 'The Couple Next Door')

author_10 = Author.create(name: 'Emma Cline')
author_10.books.create(title: 'The Girls')

author_10 = Author.create(name: 'Anthony Doerr')
author_10.books.create(title: 'All the Light We Cannot See')


book_1 = author_1.books.create(title: 'Harry Potter and The Chamber of Secrets')
book_2 = author_1.books.create(title: 'Harry Potter and The Philosophers Stone')

book_3 = author_2.books.create(title: 'The Waves')
book_4 = author_2.books.create(title: 'To The Lighthouse')

book_1.tags.create(name: 'SciFi')
book_2.tags.create(name: 'Fantasy')
book_3.tags.create(name: 'Non-fiction')
book_4.tags.create(name: 'Magical Realism')

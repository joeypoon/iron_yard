# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create title: "First Post",
            body: "Bacon ipsum dolor amet frankfurter porchetta bresaola, prosciutto filet mignon landjaeger flank. Cupim kielbasa landjaeger, capicola meatball strip steak short loin drumstick shank meatloaf flank ground round. Turkey turducken bacon, tail chuck jowl jerky pancetta biltong tenderloin pastrami. T-bone pastrami pork capicola, short ribs meatball turkey andouille salami cow brisket beef beef ribs fatback drumstick. Ball tip venison salami, sausage pork pork chop jerky jowl. Kevin jowl venison pig landjaeger pork loin filet mignon.",
            published_on: 5.minutes.ago

Post.create title: "Second Post",
            body: "Cow shankle alcatra capicola ribeye pancetta brisket, drumstick pork belly. Ribeye ham pancetta prosciutto. Capicola beef ribs meatloaf sirloin shoulder tongue brisket. Chicken swine pork turducken, t-bone picanha alcatra kevin. Rump frankfurter kevin bresaola fatback andouille tail ball tip t-bone capicola pig tri-tip kielbasa bacon. Tri-tip kielbasa ham cupim drumstick ribeye alcatra bacon.",
            published_on: 5.days.ago

Post.create title: "Third Post",
            body: "Meatloaf picanha ham, shank pancetta chicken turkey landjaeger short ribs fatback beef. Tail jowl meatloaf venison, filet mignon cow bacon shankle ham hock capicola meatball prosciutto brisket sirloin ground round. Turducken ham hock prosciutto pork belly andouille hamburger flank kielbasa capicola bacon strip steak shank ribeye spare ribs. Drumstick pancetta doner, meatloaf jerky pig tail. Alcatra kielbasa pig biltong, corned beef boudin bresaola pork belly shoulder ham hock fatback chicken drumstick shankle sirloin. Kielbasa hamburger tongue meatloaf ribeye corned beef.",
            published_on: 1.week.ago

Post.create title: "Fourth Post",
            body: "Corned beef doner pork chop tenderloin landjaeger. Fatback filet mignon shoulder ball tip. Kielbasa bacon ribeye beef picanha. Short loin salami capicola landjaeger, chicken cupim venison tongue sirloin biltong ham boudin kevin bacon. Ground round swine frankfurter, beef turkey beef ribs rump venison shankle pork belly."

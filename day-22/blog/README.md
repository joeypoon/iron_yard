***** Day 22 *****

* Create a Bloging Rails Application
* Your Post should have a title, body
* You should have a proper "db/seeds.rb" that populated your title and posts when you run rake db:seed
* When you go to "http://localhost:3000" it should list all posts (title and truncated body)
* You should click on the title and go to "http://localhost:3000/posts/:id" and display the title and body
* Add published_on to the Post using a migration
* Only show published posts

***** Day 23 *****

* If I go to /posts/new I should see a form to write a new post
* It should require content for title, body, and published_on
* I should be able to click on a post, and then click an edit button
* When I edit, it should populate the form with the post, and allow me to edit and update
* The form should be a partial as to not duplicate effort between New and Edit

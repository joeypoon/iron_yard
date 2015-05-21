# Day 14 - Git, GitHub

## Challenge - Word Count

Count the number of words in the gettysburg.txt speech. It should output
something like (fake results):

```
pizza: 20
dude: 15
perish: 10
...
```

Rules:

* Ignore common words

Starting Code:

```ruby
text = File.read './gettysburg.txt'

# get downcased words, ignores all punctuation
#    http://www.rubular.com/r/omNepEJMiq
words = text.downcase.split(/\W+/)

excluded_words = %w( that the to a and can of here have it in is not)
```

Hint: use a hash for each word, or use `group_by`


## Today

1. `Inject` example for challenge
2. Git History, Git Briefcase example
3. GitHub, GitHub Pages

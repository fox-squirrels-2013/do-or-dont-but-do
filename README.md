## MVP

1. As a user I would like to vote[do|dont] on a DoDonts
2. As a user I would like to view all DoDonts as a list (default sort == TOTAL_SCORE)

> TOTAL_SCORE = `[dos].all(+1) & [donts].all(-1)`


```text
today's goal:
- mvp stories
- fully tested
- attractively styled
- deployed on heroku
```

---

## Notes

- use `thin start` to run the web server if you want to hide the asset pipeline noise
- may need to add `Procfile` to get Heroku working
  - line in Procfile: `web: bundle exec rails server -p $PORT`
- To push pg database to Heroku: `heroku pg:push do-or-dont-but-do_development HEROKU_POSTGRESQL_? --app do-or-dont-but-do`
  - where ? is the response from `heroku addons | grep POSTGRES`
- use `git push heroku <my_branch>:master` to test my_branch on heroku
- use `rspec spec` to run tests; open `coverage/index.html` to view the results from simplecov gem 

---

## Backlog

- As a user I would like to post a new DoDont
- As a user I would like to mark a DoDonts as a favorite
- As a user I would like to vote on other DoDonts *[using weighted voting]*
- As a user I would like to see my DoDonts
- As a user I would like to see my voting history
- As a user I would like to see my total points (algo?)
- As a user I would like to organize all DoDonts by X (cohort, office, user type / status)
  - subreddits
- As a user I would like to sort all DoDonts by X (score, name, activity, popularity)
  - subreddits


*note: the link below describes the markdown used in this document*
https://help.github.com/articles/github-flavored-markdown

* css source frame effect http://css-tricks.com/examples/GradientBorder/

> project metrics (leave this section at the top):

[![Code Climate](https://codeclimate.com/github/fox-squirrels-2013/do-or-dont-but-do.png)](https://codeclimate.com/github/fox-squirrels-2013/do-or-dont-but-do)


---

## Friday, Nov 22 To-Dos

```text
- [ ] Fix issue #18
- [ ] Style homepage
- [ ] Style dodonts list
- [ ] Style /dodonts/new
- [ ] Add user to sessions
- [ ] Encrypt user passwords
- [ ] Add tests so that we achieve 100% coverage
- [ ] Install Disqus comments system
- [ ] Global navigation
- [ ] Enhance list page functionality
- [ ] Omniauth
- [ ] Mobile view CSS
```

---

## Done

```text
- [x] Set up 'new' and 'create' routes and controller actions, and 'new' view
- [x] Add registered users with registration and login routes/actions/views
- [x] Sanitize guest input from /dodonts/new
- [x] Install simplecov gem
```

---

## MVP (done!)

1. As a user I would like to vote[do|dont] on a DoDonts
2. As a user I would like to view all DoDonts as a list (default sort == TOTAL_SCORE)

> TOTAL_SCORE = `[dos].all(+1) & [donts].all(-1)`

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
- As a developer, I would like ot not keep having to delete cookies when working
    on localhost:3000. This link may help implement this:
    http://railscasts.com/episodes/274-remember-me-reset-password?view=asciicast


*note: the link below describes the markdown used in this document*
https://help.github.com/articles/github-flavored-markdown

* css source frame effect http://css-tricks.com/examples/GradientBorder/

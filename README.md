# stayathomekit
Stay Home Toolkit

This project is being built as part of [#StayHomeBeCreative](https://www.scribemind.com/stay-home-be-creative).

StayHomeBeCreative is running November 25 - 29th. The full stream schedule can be viewed [here](https://docs.google.com/spreadsheets/d/1xPZmO0Ff71xHQ_Jxx2klOeSwabqXcYGziDUNhbtriQ4/edit#gid=1289640734).

***
### Goals
- Build a website that helps people take care of themselves at home during the winter.
- Build and launch over the weekend of Nov 27-29th
- LOCAL FOCUSED - easily forked and deployed to apply to your own city

Focus on the following topics:

#### Things To Do At Home
- Creative projects that you've been putting off (writing, painting, etc)
- Books you've been wanting to read
- Play RPGs either with household or online (dndbeyond, zoom, virtual tabletops/roll20)
- At home workouts
- Video game recommendations (how to setup a minecraft server)
- Board game recommendations
- Date night ideas at home
- Ways to socialize without meeting in person (Jackbox games, among us, watch party)
  - Overlap with things to do at home
- Socially distanced ways to see close friends and family (thanksgiving food exchange, cocktail exchange)
- Self care ideas
- Pinterest of things to do at home

#### Support Local Business
- Sort by food, drink, gifts (local shops)
- No big brands
- Build this one first

#### Support a Local Cause
- Allow for submissions
- Food Bank, etc.

#### Localized covid-19 dashboard, news, graphs, information
- Link to what is already out there, all in one place
- Should we do this?
- Do we want to use graphs/news that exists or even track our own metric?
  - Number of pledges
  - Days stayed home


### Tech Details
- How do we let businesses submit their online store?
- Ruby on Rails w/ postgres
- No logins needed
- Admin moderated (me) -> approve and display on site
- Let people submit ideas / content for each section

### Models
- Post
  - Title
  - Category (business, cause, activity)
  - Body
  - Link
  - Photo


***

### Stream Notes 11/27

- [ ] Allow someone to submit an idea with their name & link back to them
- [ ] If we created users, it would be easier to allow them to submit ideas
- [ ] Twitter login?
- [ ] See what suggestions other users are making
- [ ] Let a user mark "I did this" or "I want to do this" - favorites/bookmarks
- [ ] Fix the suggestion issue: "Tell me what to do now"
- [ ] "Randomize" - Roll the dice and get an activity

***

### Stream Notes 11/28 @ 6pm PST

11/28 Goals  
- [|] Add TailwindCSS using cdn
- [|] Clean up our UI a little bit
- [|] Allow users to submit activities/businesses/causes
- [ ] Add more fields for each post category
      - Business:   
        curbside (t/f)  
        online store (link)  
        address (geocode)  
        type: bar, restaurant, coffee/bakery, shop, fitness, small business  


#### Stretch Goals as defined on 11/28
- [ ] Suggestion screen (pick something for me!)
      - Do you want to do something, buy something, or donate something?
      - javascript + rails
- [ ] Go back & add Tailwind the right way

#### Super Stretch Goals as defined on 11/28
- [ ] Allow users to create an account
      - Allow Twitter only
      - Allow them to pledge and tweet (see pledge form)
      https://www.scribemind.com/stay-home-be-creative
- [ ] covid news/all in one place
- [ ] Custom covid tracker
      - # of pledged creatives  
      - # of days stayed home  
      - pledged * days = aggregate days stayed home  

***

### Stream Notes 11/29 @ 6pm PST
Goals for 11/29  
11/29 Goals
- [x] Hook up our domain
- [x] Add ssl
- [x] Launch to heroku
- [x] Add approval to post object
      - x boolean, default: false
      - x admin will be able to toggle
      - x Only shows posts where approved: true
      - x Add a scope to Post model to do this
- [x] Add name for user that suggested the post
- [x] Finish the submission screen

### Outstanding TODOS
- [ ] Add automatic rake db:migrate to our deploy for heroku
- [ ] Add errors if failed to save new submission
- [ ] Add a flash message that your submission is awaiting approval and will show up shortly
- [ ] Add an about page + footer
    - [ ] Link to the existing pledge page https://www.scribemind.com/stay-home-be-creative

### Stretch Goals for the Future
- When someone marks something as "done" and its a business or a nonprofit, prompt for how much they spent
- Number of pledged users x Number of days stayed at home (how do we collect this?)
- Dollars supported

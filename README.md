# 310local's Flair

This is a single page Rails app built to catalog flair changes for a reddit user. It uses pretty specific selectors for 
the MLS reddit, but could easily be switched to check any users flair over time.

## Getting Started

Clone the repo, and run the following commands
```
bundle install
rake db:setup
```

Once those are ran the app should run with `rails server`.

## Fetching the flair

Running `rake flair:fetch` on the command line will see if the users flair needs to be updated.

Presently the "reason" needs to be manually populated, as I didn't feel a bot could easily determine which comment was a good reason for the switch.

Once postgres is setup, before this can be run in production:
* Run `/usr/local/Cellar/postgresql/11.3//bin/createuser -s postgres` to create a user called `postgres`
  * Only need to do this once per computer, and the username can be whatever you want
* Change `username` in `config/database.yml` to the username that you created in the above step
* Create a `.env` file with your `HELLO_APP_DATABASE_PASSWORD`. In order to create a random password, you can run `rails secret`.
* Run `bundle exec rake db:create:all` to create the databases locally.
* Don't forget to run `heroku run rails db:migrate` for migrating a new database on heroku!

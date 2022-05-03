##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [2.6.3](https://github.com/organization/project-name/blob/master/.ruby-version#L1)
- Rails [6.1.5.1](https://github.com/organization/project-name/blob/master/Gemfile#L12)

##### 1. Check out the repository

```bash
git clone https://github.com/kenneth1870/multiplica-code-test.git
```

##### 2. Install libraries 

```bash
bundle install
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000
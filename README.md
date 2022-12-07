# Playground

## Getting Started

Before you begin, please read through this documentation in it's entirety.

## Setting Up Your Environment

### Determine Terminal Shell

```sh
# We now need to configure a few things in your termainal. To determine which shell
# you are using, run this command:
echo $SHELL
```

### Install Homebrew

```sh
# If you don't already have Homebrew running on your system, execute the following
# command in a terminal:
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Install NodeJS

You'll want to install the latest version of Node which can [be found here](https://nodejs.org/en/download/)

#### Additional NPM Setup

We use [yarn](https://yarnpkg.com/package/npm) to manager our NPM dependencies.
To install/setup yarn, run the following commands:

```sh
# Make a directory for global NPM installs
mkdir ~/.npm-global

# Add yarn to your system's PATH variable
# For Bash users only (/bin/bash)
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# For ZSH users only (/bin/zsh)
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# For both Bash & ZSH users
npm i -g yarn

# You should now be able to install the `node_modules` used for playground by executing the command:
yarn
```

### Install TMUX & Overmind

```sh
# Install tmux (required by overmind)
brew install tmux
# Install overmind
brew install overmind
```

**Note:** More information can be found at: [Overmind](https://github.com/DarthSim/overmind)

### Install Ruby, Rails, & Gems

```sh
# Install rbenv to manage ruby versions
brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
# For Bash users only (/bin/bash)
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# For ZSH users only (/bin/zsh)
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc

# Install Ruby
rbenv install 3.1.2
rbenv global 3.1.2

# Install the latest version of Rails
gem install rails
# Install Bundler
gem install bundler
# Resync rbenv
rbenv rehash
# Install all of the gems used by this project
bundle install
```

### Configure Environment Variables

You'll want to setup your local `.env` file by executing the command:

```sh
cp .env.example .env
```

The Stripe credentials can be found in the developer section of Stripe's dashboard.

#### Install Redis & Start Up

```sh
# Install Redis using HomeBrew
brew install redis
# Start Redis now & when you start your Mac in the future
brew services start redis
```

### Postgres Setup

#### Install Postgres & Start Up

```sh
# Install Postgres using HomeBrew
brew install postgresql
# Start Postgres now & when you start your Mac in the future
pg_ctl -D /usr/local/var/postgres start && brew services start postgresql
# Jump into the Postgres shell
psql postgres
# Create a user for the database
CREATE ROLE playground WITH LOGIN PASSWORD 'password';
# Promote the user to a super user
ALTER ROLE playground WITH Superuser;
# Leave the shell
\q
```

#### Running Migrations & Loading Data

```rb
# Make sure your gems are installed
> bundle install
# This will drop, create, and migrate your database to the latest
# Note: This command also keeps the schema.rb file up-to-date
> rake db:migrate:reset
# Loads the seed data
> rake db:seed
```

#### Fixing Postgres Connection Problems

If running `rails s` or `rails db:migrate` leads to a "connection refused" error, run `brew services list`.

If postgres is started, but in gold, use the following fix:

```sh
brew services stop postgres
rm -f /opt/homebrew/var/postgres/postmaster.pid
brew services start posgres
```

Now when you run `brew services list`, postgresql started should be green.

### How To Start Server

```sh
# You can run the server using an NPM script
yarn start:dev
# OR you can run it manually
bin/dev
```

### How To Start Sidekiq

```sh
# We use Sidekiq as our background job processor.
# You can run it locally using the following command
EAGER_LOAD=true bundle exec sidekiq
# Or with an NPM script
yarn sidekiq:start
```

## Testing

Tests are a great way of preventing bugs and regressions from creeping into the system! To run tests, execute the command:

```sh
rspec
```

## Debugging

A great wiki to read up on how to debug on Ruby on Rails [can be found here](https://github.com/pry/pry/wiki).

## Resources

1. [Bootstrap](https://getbootstrap.com/docs/5.2/getting-started/introduction/)
2. [Active Record Validations](https://guides.rubyonrails.org/active_record_validations.html)
3. [Active Record Callbacks](https://guides.rubyonrails.org/active_record_callbacks.html)
4. [Pagination](https://ddnexus.github.io/pagy)
5. [Factory Bot](https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md)
6. [Stimulus](https://stimulus.hotwired.dev/reference/controllers)

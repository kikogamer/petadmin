# PetAdmin
Manage your petshop and get a full administrative control in your petshop.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You must have docker and docker-compose installed

```
For more information, please see https://docs.docker.com/install/ 
```

### Installing

Access the project folder in your terminal enter the following

```
$ docker-compose build
```

```
$ docker-compose run --rm app bundle install
```

```
$ docker-compose run --rm app bundle exec rails db:create
```

```
$ docker-compose run --rm app bundle exec rails db:migrate
```

```
$ docker-compose run --rm app bundle exec rails fae:seed_db
```

After that for test the installation enter the following to up the server

```
$ docker-compose up
```

Open your browser and access localhost:3000/admin to see the home page

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [Puma](https://github.com/puma/puma) - A Ruby Web Server Built For Concurrency
* [MaterializeCSS](https://github.com/Dogfalo/materialize) - Materialize, a CSS Framework based on material design.
* [Redis](https://github.com/redis/redis-rb) - A Ruby client that tries to match Redis' API one-to-one, while still providing an idiomatic interface.
* [Sidekiq](https://github.com/mperham/sidekiq) - Simple, efficient background processing for Ruby.
* [PostgreSQL](https://www.postgresql.org/) - SGDB
* [FAE](https://github.com/wearefine/fae/) - CMS for Rails. For Reals.

## Authors

* **Ronaldo Carneiro da Silva Filho** - *Initial work* - [kikogamer](https://github.com/kikogamer)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* The bootcamp super full stack team.

## Eureka

Eureka is a simple Rails app to publish objects that have been found or lost on campus.


## Quick start

``` Bash
$ git clone https://github.com/PabloVallejo/eureka.git

$ cd eureka
$ rvm gemset create ruby-2.2.0@eureka

$ bundle install

$ rake db:setup
$ rake db:migrate

# Run app.
$ bundle exec puma -C config/puma.rb
```

## Contributing

Contributions are highly appreciated, feel free to create an issue or pull request.


# rBudget
![](https://img.shields.io/badge/Microverse-blueviolet) ![](https://img.shields.io/badge/Ruby-red) ![](https://img.shields.io/badge/Rails-critical)
> Mobile web application built with Rails where you can manage your budget by allowing users to:
that allows the user to:
> - Register and log in, so that the data is private to them.
> - Introduce new transactions associated with a category.
> - See the money spent on each category.
## Built With
- Ruby
- Rails
- Tailwind

## Live version
https://boiling-tor-63704.herokuapp.com
## Getting Started
To get a local copy up and running follow these simple steps.
### Prerequisites
- Having a modern internet browser: I.E. Chrome, Edge, Safari, Firefox.
### Setup
- Go into the main page for this project: https://github.com/lu-jim/rbudget
- Click the green Code button next to the About section.
- Select the then click the 📋 button.
### Install
- Open your console and change the current working directory into the destination for this project.
- Type `git clone`, and then paste the URL copied in the Setup section.
- Type Enter and then enter `cd rbudget` to enter into the project directory.
- Run `bundler install` to install the required dependencies
- Run `rails db:create` and `rails db:migrate` to run the proper migrations and generate the app schema

## Run
```sh
rails db:create # create database
rails db:migrate # migrate tables
rails db:seed # load all data in database from seed.rb

bin/dev # necessary to start the app for the first time
---- or ----
rails s # can be used after starting the app at least once
```


### Testing
- Run `bundle exec rspec spec` to run the tests for this project
## Authors

👤 **Luis Fernando Jimenez**

- GitHub: [@lu-jim](https://github.com/lu-jim)
- Twitter: [@lujimhe](https://twitter.com/lujimhe)
- LinkedIn: [@lujim](https://www.linkedin.com/in/lujim/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!
## Acknowledgments

- Microverse for the guidelines used for this project
- Original design idea by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
- My SO and project manager, Mane
## 📝 License

This project is [MIT](./LICENSE) licensed.
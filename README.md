# README


## Deployed App

TBD

## Local Deployment

Git Clone [https://github.com/Eagerlearn/tea_subscription]
bundle install
rails db:{create,migrate,seed}

## Dev Team

 - Craig Cardwell ([@Eagerlearn](https://github.com/Eagerlearn), [LinkedIn](https://www.linkedin.com/in/craiglcardwell/))


## Description

This repo contains the tea_subscription, a REST API built with Ruby on Rails and PostgreSQL. It provides data, logic, and other services to a Front-end to allow customers to subscribe to receive an assortment of aromatic teas. tea_subscription was built as a solo take_home project when I was a students in Turing's Back-End Engineering program in Aug, 2022.

## Testing & Performance

At date of project completion, the Tea_Subscription service has TBD test coverage and all tests passing.

## PostgreSQL Schema

| Customers | Data Type | Keys |
| ----------- | ----------- | ----------- |
| Id | ID | Primary Key |
| first_name | String |  |
| last_name | String | |
| email | String | |
| address | String | |

| Teas | Data Type | Keys |
| ----------- | ----------- | ----------- |
| Id | ID | Primary Key |
| title | String |  |
| description | String |  |
| temperature | Integer |  |
| brew_time | Integer |  |

| Subscriptions | Data Type | Keys |
| ----------- | ----------- | ----------- |
| Id | ID | Primary Key |
| customer_id | Integer | User Foreign Key|
| tea_id | Integer | User Foreign Key|
| title | String | |
| price | Integer | |
| status | Integer | |
| frequency | Integer | |


## REST Endpoints

TBD



# README
![image](https://user-images.githubusercontent.com/97060659/180051493-814ea045-c5b4-4bdb-8f2d-2d6af0ea37ab.png)
# Tea Subscription Back-End

## Table of Contents

- [Deployed App](#deployed-app)
- [Local Deployment](#local-deployment)
- [Dev Team](#dev-team)
- [Description](#description)
- [Testing & Performance](#testing--performance)
- [PostgreSQL Schema](#postgresql-schema)
- [GraphQL Endpoints](#graphql-endpoints)

## Deployed App

TBD

## Local Deployment

See this [Local Setup Guide](local_setup_guide.md) for detailed instructions on how to deploy the app in a local environment.

## Dev Team

 - Craig Cardwell ([@Eagerlearn](https://github.com/Eagerlearn), [LinkedIn](https://www.linkedin.com/in/craiglcardwell/))


## Description

This repo contains the tea_subscription, a REST API built with Ruby on Rails and PostgreSQL. It provides data, logic, and other services to a Front-end to allow customers to subscribe to receive an assortment of aromatic teas. tea_subscription was built as a solo take_home project when I was a students in Turing's Back-End Engineering program in Aug, 2022.

## Testing & Performance

At date of project completion, the Tea_Subscription service has TBD test coverage and all tests passing.

## PostgreSQL Schema

| Users | Data Type | Keys |
| ----------- | ----------- | ----------- |
| Id | ID | Primary Key |
| username | String |  |
| flowrate | float | |


| DailyRecords | Data Type | Keys |
| ----------- | ----------- | ----------- |
| Id | ID | Primary Key |
| user_id | Integer | User Foreign Key|
| bag_count | Integer | |
| bottle_count | Integer | |
| starw_count | Integer | |
| shower_time | Integer | |


## REST Endpoints

The REST API endpoints are part of a Postman collection. For detailed examples of all the endpoints and example responses, see my [GraphQL Endpoints Guide](graphql_endpoints.md) or click the specific query or mutation below to go its section.

<!-- To make live queries to the GraphQL endpoint and see live schema information, setup the back-end using the [local deployment instructions](local_setup_guide.md). -->



# Pact Demo

A small demonstration of using Pact with Ruby and Docker.

## Architecture

The demo contains 2 different services, a Consumer and a Provider. The code also assumes a Pact Broker as an external dependency.

Unit tests are intentionally not included to keep it simple and just show the tests needed for Pact to run.

## Dependencies

Only two dependencies are required:

1. Docker
2. Docker Compose

## Instructions

Within the `consumer` or `provider` directories, you can run:

		$ docker-compose run test

which will execute the Pact tests.

If you need to run rake tasks (eg. publishing a new version of a pact) you can run it with :

		$ docker-compose run test rake pact:publish


## Pact overview

* Consumer Driven Contracts 
	https://martinfowler.com/articles/consumerDrivenContracts.html

* A provider's CI build will fail if it does not meet consumer
	expectations

### Pros

* More reliable service interactions

* Fast feedback integration testing

* No live testing environment required

### Cons

* You can only use it when you control both ends
  (consumer and provider)

* It's a pain to setup, and a bit of a learning curve

* It's hard to understand (it's the inverse of how you usually think)

* It couples systems/services together and forces change a certain way
  (provider has to be changed first and requires backwards compatibility)

* Does not work well if consumer/provider is across team boundaries
  (consumers can break the provider's build)

### Interesting Pact Things

Pact Broker
	Middle man for pacts
	Can also use local pact file
	Documentation
	Versioning

Rake
	Consumer -> Publish to Pact Broker
	Provider -> Verifies against pact

Pact Helper
	Consumer/Provider differences
	Configs

Integration spec
	Consumer
	Provider

Mock server

Logging
	Pact.log
	Mock server log

Changing contracts
	Changing Consumer first
	Changing Provider first





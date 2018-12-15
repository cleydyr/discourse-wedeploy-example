# Discourse
An instance of [Discourse](www.discourse.org).

The template used for this deployment is equivalent to the combination of the `postgres`, `redis` and `web` templates as contained on the discourse_docker repository. It means all applications needed to run a production environment of Discourse will be running inside that container.

## Configuration
Change configurations by editing the Dockerfile.
The only **required** configuration is the SMTP server, user and password, which will be used to send notifications and validate newly created accounts. It includes the admin account itself, so you should provide valid SMTP credentials in order to be able to validate the account of your example via email.

Alternatively, you can use the shell of the container, run `rake admin:create` and follow the instructions to create a new account without using mail messaging to validate it.

## Instructions

1. Install the [WeDeploy CLI](https://wedeploy.com/docs/intro/using-the-command-line/).
2. Clone this repository.
3. Open the project with your command line and run `we deploy -p yourproject`.

## License

[BSD-3-Clause](./LICENSE.md), © Liferay, Inc.
FROM discourse/base:2.0.20181031
ADD ./startup.sh /startup.sh

# Change those, if needed

# Locale for PostgreSQL
ENV LANG="en_US.UTF-8"
# Locale of the installation itself
ENV DISCOURSE_DEFAULT_LOCALE="en"
# Number of workers. A good measure is the number of cpus your service has available
ENV UNICORN_WORKERS="1"
# Developer e-mails
ENV DISCOURSE_DEVELOPER_EMAILS="me@example.com,you@example.com"

# SMTP Settings (REQUIRED)
# The SMTP mail server used to validate new accounts and send notifications.
# You can change those to 1) use the smtp settings and credentials of your
# existing account or 2) create a mail account on mailtrap or similar service.
# If you don't want to use e-mail to validate the first account for testing
# purposes, use `we shell` to enter the running container and then rake
# admin:create to create acccounts. See https://meta.discourse.org/t/create-admin-account-from-console/17274
# for more details.
ENV DISCOURSE_SMTP_ADDRESS="smtp.example.com"
ENV DISCOURSE_SMTP_PORT="465"
ENV DISCOURSE_SMTP_USER_NAME="username@example.com"
ENV DISCOURSE_SMTP_PASSWORD="pa$$word"

# Better not to change those unless you know what you're doing
ENV RAILS_ENV="production"
ENV UNICORN_SIDEKIQS="1"
ENV RUBY_GC_HEAP_GROWTH_MAX_SLOTS="40000"
ENV RUBY_GC_HEAP_INIT_SLOTS="400000"
ENV RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR="1.5"

ENTRYPOINT [ "/startup.sh" ]

# EXERCISE

For this exercise we will need that you implement the remaining features, right now we have an application that can list events, we can also associate a venue to the event.

## Event Model

The event model has the following attributes:
* name (string)
* description (text)
* start_at (datetime)
* end_at (datetime)
* timezone (string)
* venue (references)
* logo (paperclip)

## Venue Model

The venue model has the following attributes:
* name (string)
* address (string)
* website (string)
* description (text)

Now, we really want to sell tickets to the events that we are listing, something like, and we will need your help!

You will need to create a tickets model associate with an event and then you will have to create a "checkout" form so that users can buy tickets, we will need to accept credit cards and Paypal for that you will need to use Braintree (https://developers.braintreepayments.com/start/overview) ... for the checkout form you can take inspiration from the Bootstrap examples such as: https://getbootstrap.com/docs/4.0/examples/checkout/

For the tickets we need at least the ticket name, his status, quantity and price.

On the "checkout" we will need to collect the email of the user, the ticket and quantity desired, and general billing information (name, address, city, country, zip code).

# Notes

The main objective has been stated is to create the concept of tickets and have the ability to sell them. Also, don't forget to send an email to the user with his purchase confirmation.

However, feel free to change/tweak/recreate anything that you feel that is not right or that you think can be improved.

For instance, right now, the events are being shown using their internal ID, maybe we could have a more human readable alternative instead.

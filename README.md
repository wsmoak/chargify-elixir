Chargify
==========

A Chargify API Wrapper for Elixir

Based on https://github.com/slogsdon/mandrill-elixir

Currently supports listing the most recent subscription

Configure environment variables for CHARGIFY_API_KEY and CHARGIFY_SUBDOMAIN

```
$ iex -S mix
> Chargify.start
{:ok, []}
> Chargify.Subscriptions.list
%HTTPoison.Response{body: [%{subscription: %{activated_at: "2015-07-13T01:39:16+12:00",
      balance_in_cents: 0, cancel_at_end_of_period: nil, canceled_at: nil,
      cancellation_message: nil, coupon_code: "fiftyrmn",
      created_at: "2015-07-13T01:39:10+12:00", [...]
```

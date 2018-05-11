# For assistance debugging failures

* The pact files have been stored locally in the following temp directory:
    /app/tmp/pacts

* The requests and responses are logged in the following log file:
    /app/log/pact.log

* Add BACKTRACE=true to the `rake pact:verify` command to see the full backtrace

* If the diff output is confusing, try using another diff formatter.
  The options are :unix, :embedded and :list

    Pact.configure do | config |
      config.diff_formatter = :embedded
    end

  See https://github.com/pact-foundation/pact-ruby/blob/master/documentation/configuration.md#diff_formatter for examples and more information.

* Check out https://github.com/pact-foundation/pact-ruby/wiki/Troubleshooting

* Ask a question on stackoverflow and tag it `pact-ruby`


The following changes have been made since the previous distinct version of this pact, and may be responsible for verification failure:

# Diff between versions 1.0.0 and 2.0.0 of the pact between Consumer and Provider

The following changes were made 2 minutes ago (Wed 09 May 2018, 4:17am +00:00)

 {
   "metadata": {
     "pactSpecification": {
-      "version": "1.0.0"
+      "version": "2.0.0"
     }
   }
 }

## Links

current-pact-version:
  title: Pact
  name: Pact between Consumer (v2.0.0) and Provider
  href: http://pactbroker.dmuso.com/pacts/provider/Provider/consumer/Consumer/version/2.0.0
previous-distinct-pact-version:
  title: Pact
  name: Pact between Consumer (v1.0.0) and Provider
  href: http://pactbroker.dmuso.com/pacts/provider/Provider/consumer/Consumer/version/1.0.0

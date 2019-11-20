# Jets Mount Routes Examples

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

This project contains [Jets routes mount](https://rubyonjets.com/docs/routing/mount/) examples.  It has an example for:

* [Rack](app/racks/rack_app.rb)
* [Sinatra](app/racks/sinatra_app.rb)
* [Grape](app/racks/grape_app.rb)

Please feel free to fork this repo and send in PRs with more examples with other frameworks.

## Usage

Clone the project.

    git clone https://github.com/tongueroo/jets-routes-mount demo # the Jets project is named demo
    cd demo

Deploy it.

    $ jets deploy
    Deploying to Lambda demo-dev environment...
    ...
    12:08:31AM UPDATE_COMPLETE AWS::CloudFormation::Stack demo-dev
    Stack success status: UPDATE_COMPLETE
    Time took for stack deployment: 1m 47s.
    Prewarming application.
    API Gateway Endpoint: https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/
    $

Test it.

    $ curl https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/sinatra
    SinatraApp homepage
    $ curl https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/sinatra/hello
    Hello
    $ curl https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/sinatra/hello2
    Hello2
    $ curl https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/grape
    GrapeApp home
    $ curl https://xbrp9dekhc.execute-api.us-west-2.amazonaws.com/dev/grape/hello
    {:hello=>"world"}
    $

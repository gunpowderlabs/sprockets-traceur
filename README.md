# Sprockets::Traceur

This gem integrates [traceur-rb](https://github.com/gunpowderlabs/traceur-rb) with Sprockets (and through Sprockets, with Rails Asset Pipeline).

## Installation

Add this line to your application's Gemfile:

    gem 'sprockets-traceur'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sprockets-traceur

## Usage with Rails

1. Add `sprockets-traceur` to your Gemfile.
2. Add the following line in `app/assets/javascripts/application.js`:

    ```javascript
    //= require traceur-runtime
    ```

3. Add `.js.es6` or `.js.next` extension to the files you wish to have transipled.
4. Profit!

## Usage with Sinatra/Rack

1. Add `sprockets-traceur` to your Gemfile.
2. Configure Rack to use Sprockets (in `config.ru`):

    ```ruby
    require "my_rack_application"

    map "/assets" do
      root = File.dirname(__FILE__)
      environment = Sprockets::Environment.new
      environment.append_path root + '/assets/javascripts'
      environment.append_path root + '/assets/stylesheets'
      run environment
    end

    map "/" do
      run MyRackApplication
    end
    ```

3. Add `.js.es6` or `.js.next` extension to the files you wish to have transipled.
4. Add the following line in `assets/javascripts/application.js`:

    ```javascript
    //= require traceur-runtime
    ```

5. Reference the JS files in your views

    ```html
    <!-- /assets/application.js 
         maps to /assets/javascripts/application.js[.next|.es6] -->
    <script type="text/javascript" src="/assets/application.js"></script>
    ```

6. Profit!

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sprockets-traceur/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Installation

Add this line to your application's Gemfile:

    gem 'fake_primary_key'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fake_primary_key

## Usage

While upgrading one my rails app from 2.3.x to 3.2.x I was upgrading thinking sphinx and one of the errors in upgrading thinking-sphinx I came accross was something like:

    undefined method `to_sym' for nil:NilClass

    ../thinking-sphinx-3.0.6/lib/thinking_sphinx/active_record/sql_source/template.rb:51:in `primary_key'


So I came up with this quick fix:


In your ActiveRecord models just include the line:

    include FakePrimaryKey


Then model will return "id" as primary key

    ModelName.primary_key #=> "id"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

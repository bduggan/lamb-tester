require_relative 'test_helper'
require_relative '../hi'

class HelloTest < Minitest::Spec
    include Rack::Test::Methods

    it 'works' do
        1.must_equal(1)
    end

    def app
        Sinatra::Application
    end

    def test_it_says_hello
        get '/'
        assert_equal 'hello from lamb-tester', last_response.body
    end

end

require 'swagger_helper'

RSpec.describe 'api/v1/web_content', type: :request do
  path '/api/v1/web_content' do
    get 'Retrieve web content' do
      tags 'Web Content'
      produces 'application/json'

      response '200', 'web content retrieved' do
        schema type: :object,
               properties: {
                 message: { type: :string }
               },
               required: ['message']

        run_test!
      end
    end
  end
end
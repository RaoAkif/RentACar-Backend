require 'swagger_helper'

RSpec.describe 'api/v1/cars', type: :request do
  path '/api/v1/cars' do
    get('list cars') do
      tags 'Cars'
      response(200, 'successful') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create car') do
      let(:name) { 'car name' }
      tags 'Cars'
      consumes 'application/json'
      parameter name: :car, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          model: { type: :string },
          desc: { type: :string },
          image: { type: :string },
          rent: { type: :number }
        },
        required: %w[name model desc image rent]
      }

      response '201', 'car created' do
        let(:car) { { name: 'Toyota', model: 'Corola', desc: 'description', image: 'url', rent: 200 } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:car) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}/edit' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('edit car') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/cars/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show car') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update car') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update car') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete car') do
      tags 'Cars'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end

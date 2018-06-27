# frozen_string_literal: true

FactoryBot.define do
  factory :client, class: MondialRelay::Client do; end

  factory :request, class: MondialRelay::Request do
    operation :test
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :configuration, class: MondialRelay::Configuration do; end

  factory :query, class: MondialRelay::Query do
    operation :test
    params { { v1: 'v1', k2: 'v2' } }

    initialize_with { new(operation, params) }
  end

  factory :generic_service, class: MondialRelay::Services::GenericService

  factory :service_registry, class: MondialRelay::ServiceRegistry
end

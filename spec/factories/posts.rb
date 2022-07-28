# frozen_string_literal: true

require 'rails_helper'

FactoryBot.define do
  factory :posts do
    title { "MyString" }
    description { "MyText" }
  end
end

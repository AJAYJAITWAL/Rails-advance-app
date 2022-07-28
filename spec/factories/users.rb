# frozen_string_literal: true

require 'rails_helper'

FactoryBot.define do
  factory :users do
    name { 'User' }
    email { 'test@gmail.com' }
    phone { '9876567898' }
    address { 'indore' }
  end
end
  
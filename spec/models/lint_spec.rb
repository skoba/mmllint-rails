# coding: utf-8
require 'rails_helper'
require 'nokogiri'

RSpec.describe Lint, type: :model do
  let(:lint) { Lint.new }

  context 'initialize' do
    example 'generatepp instance' do
      expect(lint).to be_an_instance_of Lint
    end
  end

  context 'valid MML instance' do
    let(:lint) { Lint.new({mml: VALID_MML}) }

    it 'should return true' do
      expect(lint).to be_valid
    end
  end

  context 'invalid MML instance' do
    let(:lint) { Lint.new({mml: INVALID_MML}) }

    it 'should return false' do
      expect(lint).not_to be_valid
    end

    it 'should describe failure' do
      expect(lint.errors).not_to be_empty
    end
  end
end

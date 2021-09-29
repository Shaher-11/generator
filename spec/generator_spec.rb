# frozen_string_literal: true

require 'generator'
describe Generator do
  result = Generator.new
  clauses = [
    { 'id' => 1, 'text' => 'The quick brown fox' },
    { 'id' => 2, 'text' => 'jumps over the lazy dog' },
    { 'id' => 3, 'text' => 'And dies' },
    { 'id' => 4, 'text' => 'The white horse is white' }
  ]
  sections = [
    { 'id' => 1, 'clauses_ids' => [1, 2, nil] }
  ]
  describe '.generate_from_clause' do
    it 'should generate text from the given clauses hash' do
      expect(result.generate_from_clause(clauses)).instance_of?('text'.class)
    end
    it 'should generate text from the given clauses hash' do
      expect { result.generate_from_clause }.to raise_error
    end
  end

  describe '.generate_from_section' do
    it 'should generate text from the given clauses hash' do
      expect { result.generate_from_clause }.to raise_error
    end
    it 'should generate text from the given clauses hash by accessing it throw the given ids in the section' do
      expect(result.generate_from_section(clauses, sections)).instance_of?('text'.class)
    end
  end
end

module Importer
  class Glossary
    def self.run(filename = 'text/glossary.yml')
      ActiveRecord::Base.transaction do
        Definition.find_each { |d| d.destroy }
        filename = File.join(Rails.root, filename)
        definitions = YAML.load_file(filename)
        definitions.each do |(term, text)|
          Definition.create(term: term.strip, text: text.strip)
        end
      end
    end
  end
end
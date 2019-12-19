module Populator
  # Builds multiple Populator::Record instances and saves them to the database
  class Factory
    def rows_sql_arr
      @records.map do |record|
        quoted_attributes = record.attribute_values.map { |v| @model_class.connection.quote(v) }
        "(#{quoted_attributes.join(', ')})"
      end
    end
  end
end

require 'faker'

namespace :db do
  desc "Populates tables with some data"
  task populate: :environment do
  #  Game.delete_all
  #  SystemRequirement.delete_all
 #   Studio.delete_all
    i=1
    Studio.populate(10) do |studio|
      studio.name=Faker::Book.publisher
      studio.founder=Faker::Name.name
      i+=1
    end
    i=1
    SystemRequirement.populate(10) do |system_requirement|
      system_requirement.processor=Faker::Space.company
      system_requirement.space=Faker::Space.name
      system_requirement.graphicsCard=Faker::Space.galaxy
      system_requirement.system=Faker::Space.meteorite
      system_requirement.memory=Faker::Space.planet
      i+=1
    end
  end
end

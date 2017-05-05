class AnimalSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :species

  # def species_name
  #   object.species.name
  # end


end


# module ActiveModel

#   class Serializer

#     def self.attributes(*methods)
#       methods.each do |method|
#         if self.respond_to?(method)
#           self.send(method)
#         else
#           object.send(method)
#         end
#       end
#     end

#     attr_reader :object
#     def initialize(object)
#       @object = object
#     end
#   end

# end


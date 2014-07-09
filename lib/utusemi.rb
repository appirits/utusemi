require 'utusemi/definition'
require 'utusemi/configuration'
require 'utusemi/core'

module Utusemi
  class << self
    def enable
      ::ActiveRecord::Base.send(:include, Core::InstanceMethods)

      ::ActiveRecord::Relation.send(:prepend, Core::ActiveRecord::QueryMethods)
      ::ActiveRecord::Relation.send(:prepend, Core::ActiveRecord::Relation)
      ::ActiveRecord::Base.class_eval { class << self; self; end }.send(:prepend, Core::ActiveRecord::Querying)
      ::ActiveRecord::Base.class_eval { class << self; self; end }.send(:prepend, Core::ActiveRecord::RelationMethod) if Rails::VERSION::MAJOR == 3
      ::ActiveRecord::Base.send(:prepend, Core::ActiveRecord::Base)
      ::ActiveRecord::Associations::HasManyAssociation.send(:prepend, Core::ActiveRecord::Associations)
      ::ActiveRecord::Base.class_eval { class << self; self; end }.send(:prepend, Core::ActiveRecord::AssociationMethods)
    end

    def config
      @configuration ||= Configuration.new
    end

    def configure(&block)
      config.instance_eval(&block)
    end
  end
end

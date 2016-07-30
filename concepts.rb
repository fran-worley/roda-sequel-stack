require "trailblazer/operation"
require "trailblazer/operation/representer"

# require "trailblazer/operation/policy"
Trailblazer::Operation.class_eval do
  require "trailblazer/operation/model"
  include Trailblazer::Operation::Model
end

require "roar/json"

Reform::Form.class_eval do
  require "reform/form/dry"
  include Reform::Form::Dry
  require "reform/form/coercion"
  include Reform::Form::Coercion

  require "disposable/twin/property/hash"
  # include Disposable::Twin::Property::Hash # FIXME: not inherited!
end

require "trailblazer/loader"
Trailblazer::Loader.new.(debug: false, concepts_root: "./concepts/") { |file|
  require_relative(file) }

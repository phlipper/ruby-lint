gem 'parser', '~> 2.0'

require 'parser'

# Try to load the latest parser and fall back to 2.0. This should only occur on
# Ruby versions >= 2.1 (e.g. Rubinius HEAD).
begin
  require 'parser/current'
rescue NotImplementedError => error
  warn "Falling back to Ruby 2.0: #{error.message}"

  require 'parser/ruby20'
  Parser::CurrentRuby = Parser::Ruby20
end

require 'yaml'
require 'set'
require 'digest/sha1'
require 'zlib'

require_relative 'ruby-lint/extensions/string'

require_relative 'ruby-lint/variable_predicates'
require_relative 'ruby-lint/ast/node'
require_relative 'ruby-lint/ast/builder'
require_relative 'ruby-lint/parser'
require_relative 'ruby-lint/file_scanner'
require_relative 'ruby-lint/nested_stack'
require_relative 'ruby-lint/docstring/parser'
require_relative 'ruby-lint/docstring/param_tag'
require_relative 'ruby-lint/docstring/return_tag'
require_relative 'ruby-lint/docstring/mapping'

require_relative 'ruby-lint/node_hash'
require_relative 'ruby-lint/cache'
require_relative 'ruby-lint/cache_entry'

require_relative 'ruby-lint/constant_path'

require_relative 'ruby-lint/definition_builder/base'
require_relative 'ruby-lint/definition_builder/ruby_module'
require_relative 'ruby-lint/definition_builder/ruby_class'
require_relative 'ruby-lint/definition_builder/ruby_method'
require_relative 'ruby-lint/definition_builder/ruby_array'
require_relative 'ruby-lint/definition_builder/ruby_hash'
require_relative 'ruby-lint/definition_builder/ruby_block'
require_relative 'ruby-lint/definition_builder/primitive'

require_relative 'ruby-lint/method_call/base'
require_relative 'ruby-lint/method_call/assign_member'
require_relative 'ruby-lint/method_call/include'
require_relative 'ruby-lint/method_call/alias'
require_relative 'ruby-lint/method_call/attribute'
require_relative 'ruby-lint/method_call/define_method'

require_relative 'ruby-lint/iterator'
require_relative 'ruby-lint/global_scope'
require_relative 'ruby-lint/virtual_machine'
require_relative 'ruby-lint/constant_loader'
require_relative 'ruby-lint/file_loader'
require_relative 'ruby-lint/method_call_info'

require_relative 'ruby-lint/definition/ruby_object'
require_relative 'ruby-lint/definition/ruby_method'
require_relative 'ruby-lint/definition/constant_proxy'
require_relative 'ruby-lint/definitions/core'
require_relative 'ruby-lint/definitions/global_variables'

require_relative 'ruby-lint/analysis/base'
require_relative 'ruby-lint/analysis/unused_variables'
require_relative 'ruby-lint/analysis/shadowing_variables'
require_relative 'ruby-lint/analysis/undefined_variables'
require_relative 'ruby-lint/analysis/undefined_methods'
require_relative 'ruby-lint/analysis/argument_amount'
require_relative 'ruby-lint/analysis/pedantics'

require_relative 'ruby-lint/report'
require_relative 'ruby-lint/report/entry'

require_relative 'ruby-lint/presenter/text'
require_relative 'ruby-lint/presenter/json'
require_relative 'ruby-lint/presenter/syntastic'

require_relative 'ruby-lint/configuration'
require_relative 'ruby-lint/default_names'
require_relative 'ruby-lint/runner'
require_relative 'ruby-lint/version'

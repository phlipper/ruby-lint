# This file was automatically generated, any manual changes will be lost the
# next time this file is generated.
#
# Created:  2013-11-11 20:49:50 +0100
# Platform: rbx 2.1.1

RubyLint::GlobalScope.definitions.define_constant('Profiler__') do |klass|
  klass.inherits(RubyLint::GlobalScope.constant_proxy('Object'))

  klass.define_method('initialize')

  klass.define_method('options') do |method|
    method.define_argument('opts')
  end

  klass.define_method('print_profile') do |method|
    method.define_argument('f')
  end

  klass.define_method('start_profile')

  klass.define_method('stop_profile')
end

RubyLint::GlobalScope.definitions.lookup(:const, 'Profiler__').deep_freeze

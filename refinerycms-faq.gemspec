# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-faq'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Faqs extension for Refinery CMS'
  s.date              = '2014-08-24'
  s.summary           = 'Faqs extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  s.authors           = %q{Arnaud Augier}

  # Runtime dependencies
  s.add_dependency    %q{refinerycms},       ['>= 3.0.0', '< 5.0']
  s.add_dependency    %q{decorators},        %q{~> 2.0.0}
  s.add_dependency    %q{globalize},         %q{~> 5.0}
  s.add_dependency %q{friendly_id}, %q{~> 5.2.1}
  s.add_dependency %q{friendly_id-globalize}, %q{>= 1.0.0.alpha2}

  # Development dependencies (usually used for testing)
  s.add_development_dependency %q{refinerycms-testing}
end

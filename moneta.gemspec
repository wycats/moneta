# -*- encoding: utf-8 -*-

# June 1, 1:00pm

Gem::Specification.new do |s|
  s.name = %q{moneta}
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yehuda Katz"]
  s.autorequire = %q{moneta}
  s.date = %q{2009-02-12}
  s.description = %q{A unified interface to key/value stores}
  s.email = %q{wycats@gmail.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "SPEC.markdown", "TODO", "benchmarks/various.rb", "lib/moneta.rb", "lib/moneta/adapters/basic_file.rb", "lib/moneta/adapters/couch.rb", "lib/moneta/adapters/datamapper.rb", "lib/moneta/adapters/file.rb", "lib/moneta/adapters/fog.rb", "lib/moneta/adapters/lmc.rb", "lib/moneta/adapters/memcache.rb", "lib/moneta/adapters/memory.rb", "lib/moneta/adapters/mongodb.rb", "lib/moneta/adapters/rackspace.rb", "lib/moneta/adapters/redis.rb", "lib/moneta/adapters/s3.rb", "lib/moneta/adapters/sdbm.rb", "lib/moneta/adapters/tokyo_cabinet.rb", "lib/moneta/adapters/tyrant.rb", "lib/moneta/adapters/xattr.rb", "lib/moneta/adapters/yaml.rb", "lib/moneta/builder.rb", "moneta.gemspec", "script/destroy", "script/generate", "spec/moneta_basic_file_spec.rb", "spec/moneta_couch_spec.rb", "spec/moneta_datamapper_spec.rb", "spec/moneta_file_spec.rb", "spec/moneta_lmc_spec.rb", "spec/moneta_memcache_spec.rb", "spec/moneta_memory_spec.rb", "spec/moneta_mongodb_spec.rb", "spec/moneta_rackspace_spec.rb", "spec/moneta_redis_spec.rb", "spec/moneta_s3_spec.rb", "spec/moneta_sdbm_spec.rb", "spec/moneta_tokyo_cabinet_spec.rb", "spec/moneta_tyrant_spec.rb", "spec/moneta_xattr_spec.rb", "spec/moneta_yaml_spec.rb", "spec/shared.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.yehudakatz.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A unified interface to key/value stores}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

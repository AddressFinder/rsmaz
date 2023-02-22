# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rsmaz}
  s.version = "0.0.5"

  s.authors = ["Addressfinder (this fork)"]
  s.date = '2023-02-22'
  s.description = %q{Short String Compression for Ruby. RSmaz is a pure-Ruby port of the Smaz short string compression algorithm by Salvatore Sanfilippo and released as a C library at: http://github.com/antirez/smaz/tree/master  I've done some initial cleanup of a pure Ruby->C port, but this is not yet complete. It does pass the specs, however! Feel free to clean it up as it's a bit memory inefficient right now... :)}
  s.email = ["santosh.mani@addressfinder.com"]
  s.extra_rdoc_files = ["HISTORY", "README.rdoc"]
  s.files = [ 'HISTORY',
              'Rakefile',
              'README.rdoc',
              '.ruby-version',
              'test/test_helper.rb',
              'test/test_rsmaz.rb',
              'lib/rsmaz.rb']
  s.homepage = 'https://github.com/AddressFinder/rsmaz'
  s.require_paths = ["lib"]
  s.summary = %q{Short String Compression for Ruby}
  s.add_development_dependency('minitest')
end

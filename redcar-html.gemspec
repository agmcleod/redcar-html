Gem::Specification.new do |s|
  s.name = "redcar-html"
  s.version = "1.0"
  s.platform = "ruby"
  s.authors = ["Aaron McLeod"]
  s.email = ["aaron.g.mcleod@gmail.com"]
  s.homepage = "http://github.com/agmcleod/redcar-html"
  s.summary = "A plugin for redcar that gives useful html commands and snippets"
  s.description = ""
  s.files = Dir.glob("{lib}/**/*") + %w{README.md plugin.rb}
  s.require_path = 'lib'
end
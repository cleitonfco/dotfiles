#!/usr/bin/env ruby
 
# from http://github.com/rmm5t/dotfiles
 
home = File.expand_path('~')
 
Dir['*'].each do |file|
  next if file =~ /install/
  target = File.join(home, ".#{file}")
  `ln -ns #{File.expand_path file} #{target}`
end

#!/usr/bin/env ruby

require 'jekyll'

home = File.dirname(__FILE__)

# conf = Jekyll.configuration({
conf = {
  source:         home,
  destination:  home + '/../digitalbias.bitbucket.org'
}

# Jekyll::Site.new(conf).process
puts home
puts `jekyll build -s #{conf[:source]} -d #{conf[:destination]}`
puts `cd #{conf[:destination]}`
puts `git add .`
puts `git commit -m "automatic publish for app with script"`
puts `git push origin master`

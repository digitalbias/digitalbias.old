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
`jekyll build -s #{conf[:source]} -d #{conf[:destination]}`
`cd #{conf[:destination]}`
`git add .`
`git commit -m "adding changes to the app"`
`git push origin master`

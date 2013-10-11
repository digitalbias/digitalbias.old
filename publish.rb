#!/usr/bin/env ruby

require 'jekyll'
require 'git'
require 'logger'

home = File.dirname(__FILE__)

# conf = Jekyll.configuration({
conf = {
  source:         home,
  destination:  home + '/../digitalbias.bitbucket.org'
}

# Jekyll::Site.new(conf).process
puts home
puts `jekyll build -s #{conf[:source]} -d #{conf[:destination]}`

g = Git.open(conf[:destination], :log => Logger.new(STDOUT))
g.add(:all=>true)  
g.commit("automatic publish for app with script")
g.push(g.remote('origin'))

g = Git.open(conf[:source], :log => Logger.new(STDOUT))
g.push(g.remote('publish'))

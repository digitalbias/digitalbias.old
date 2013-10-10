#!/usr/bin/env ruby

require 'jekyll'

home = File.dirname(__FILE__)

conf = Jekyll.configuration({
  'source'      => home,
  'destination' => home + '../digitalbias.bitbucket.org'
})

Jekyll::Site.new(conf).process

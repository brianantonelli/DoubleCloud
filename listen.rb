require 'rubygems'
require 'fssm'
require 'fileutils'
require 'bundler/setup'

FSSM.monitor("/Users/Shared/Stephanie\'s\ Photostream/Masters", '**/*') do
  create do |b,r|
    file = File.join(b, '/', r)
    puts "Copying #{file} to Auto Import directory.."
    FileUtils.copy file, "/Users/Shared/iPhoto\ Library/Auto\ Import/"
  end
end

require 'bundler' 
Bundler.require
#appellent le bundler et permettent de lire le Gemfile. Ainsi, pas besoin de mettre partout des require 'gem'.
$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
#appellent tout les fichiers lier au config.ru
run ApplicationController
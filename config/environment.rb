#environment
require 'bundler'

Bundler.require

require_relative '../app/controllers/main.rb'

MY_LOGIN = ENV['CAMELBACK_MY_LOGIN']
MY_PASSWORD = ENV['CAMELBACK_MY_PASSWORD']
MY_ORGANIZATION = ENV['CAMELBACK_MY_ORGANIZATION']
WEB_USER = ENV['CAMELBACK_WEB_USER']
WEB_PASSWORD = ENV['CAMELBACK_WEB_PASSWORD']

MY_ORG_CAPITALIZE = MY_ORGANIZATION.split('-').map { |s| s.capitalize }.join(' ')

# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'android_studio'
  app.theme = '@android:style/Theme.Material'

  app.resources_dirs = ['res']
  app.sub_activities += ['DisplayResultImcActivity']
  app.api_version = '18'
end

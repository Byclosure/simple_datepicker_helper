# Install hook code here

require 'fileutils'
# Workaround a problem with script/plugin and http-based repos.
# See http://dev.rubyonrails.org/ticket/8189
Dir.chdir(Dir.getwd.sub(/vendor.*/, '')) do


  FileUtils.cp(File.join(PLUGIN_ROOT,"assets", "simple_datepicker.js"), File.join(RAILS_ROOT,"public","javascripts"))
  FileUtils.cp(File.join(PLUGIN_ROOT,"assets", "runner.js"), File.join(RAILS_ROOT,"public","javascripts","simple_datepicker_runner.js"))
  FileUtils.cp(File.join(PLUGIN_ROOT,"assets", "simple_datepicker.css"), File.join(RAILS_ROOT,"public","stylesheets"))

end

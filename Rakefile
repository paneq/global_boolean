require 'bundler'
Bundler::GemHelper.install_tasks

Bundler::GemHelper.class_eval do
  def rubygem_push(path)
    sh("gem inabox #{path}")
    Bundler.ui.confirm "Pushed #{name} #{version} to configured geminabox"
  end
end

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
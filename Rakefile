require 'rake/testtask'

Rake::TestTask.new :test do |config|
    config.libs << "test"
    config.test_files = FileList['test/*_test.rb']
end

task default: :test

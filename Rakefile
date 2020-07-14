require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"
require "prettier"
require "prettier/rake/task"
require "yard"
require "yard/rake/yardoc_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

YARD::Rake::YardocTask.new
RuboCop::RakeTask.new
Prettier::Rake::Task.new { |t| t.source_files = "{{lib,test}/**/*.rb,*.gemspec,Rakefile}" }

task default: :test

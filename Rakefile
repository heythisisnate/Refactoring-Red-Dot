require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'

Dir.glob('example_*').each do |example|

  namespace example do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = "./#{example}/spec/**/*_spec.rb"
    end
  end

  task example => "#{example}:spec"
end



################################################################################
#
#      Author: Zachary Patten <zachary@jovelabs.net>
#   Copyright: Copyright (c) Zachary Patten
#     License: Apache License, Version 2.0
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
################################################################################

require 'rake/clean'

require 'bundler/gem_tasks'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w(--format JUnit --out vendor/reports/junit/test-results.xml --format html --out vendor/reports/html/test-results.html --format documentation)
end

require 'coveralls/rake/task'
Coveralls::RakeTask.new

require 'ztk/rake/docs'

################################################################################

task :coveralls => [:spec, 'coveralls:push']
task :default => [:spec]
task :test => [:spec]

################################################################################

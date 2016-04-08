################################################################################
#
#      Author: Zachary Patten <zpatten AT jovelabs DOT io>
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
require 'simplecov'
require 'simplecov-rcov'
################################################################################
ENV['CODECLIMATE_REPO_TOKEN'] = "5bfff36fe2faa17f9251e2e5cebc5b7fb277fa58f49e6d84451f8a1a0329da0d"
require "codeclimate-test-reporter"
CodeClimate::TestReporter.start
################################################################################
require 'coveralls'
Coveralls.wear!
################################################################################
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(
  [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::RcovFormatter,
    Coveralls::SimpleCov::Formatter
  ]
)
SimpleCov.start
################################################################################
require 'yarjuf'
################################################################################

require 'tempfile'
require 'sockit'

ENV['LOG_LEVEL'] = "DEBUG"

################################################################################
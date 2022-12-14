# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/mybusiness_v4/service.rb'
require 'google/apis/mybusiness_v4/classes.rb'
require 'google/apis/mybusiness_v4/representations.rb'
require 'google/apis/mybusiness_v4/gem_version.rb'

module Google
  module Apis
    # Google My Business API
    #
    # The Google My Business API provides an interface for managing business
    # location information on Google.
    #
    # @see https://developers.google.com/my-business/
    module MybusinessV4
      # Version of the Google My Business API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V4'
    end
  end
end

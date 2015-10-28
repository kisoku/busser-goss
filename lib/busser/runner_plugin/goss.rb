# -*- encoding: utf-8 -*-
#
# Author:: Mathieu Sauve-Frankel (<msf@kisoku.net>)
#
# Copyright (C) 2015, Mathieu Sauve-Frankel
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'busser/runner_plugin'

# A Busser runner plugin for Goss.
#
# @author Mathieu Sauve-Frankel (<msf@kisoku.net>)
#
class Busser::RunnerPlugin::Goss < Busser::RunnerPlugin::Base
  postinstall do
    version = 'v0.0.7'
    url = "https://github.com/aelsabbahy/goss/releases/download/#{version}/goss-linux-amd64"
    destdir = vendor_path('goss')

    empty_directory(destdir)

    src = open(url).binmode
    dst = File.open(File.join(destdir, 'goss'), 'wb')
    IO.copy_stream(src, dst)

    inside(destdir) do
      chmod('goss', 755)
    end
  end

  def test
    Dir.glob("#{suite_path("goss")}/*_{test,spec}.{goss,json}").each do |file|
      banner "[goss] #{File.basename(file)}"
      run!("goss -g #{file} validate")
    end
  end
end

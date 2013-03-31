[![Build Status](https://secure.travis-ci.org/zpatten/sockit.png)](http://travis-ci.org/zpatten/sockit)
[![Dependency Status](https://gemnasium.com/zpatten/sockit.png)](https://gemnasium.com/zpatten/sockit)
[![Code Climate](https://codeclimate.com/github/zpatten/sockit.png)](https://codeclimate.com/github/zpatten/sockit)

# SOCKIT

Transparent SOCKS 5 support for TCPSocket

## INSTALLATION

Add this line to your application's Gemfile:

    gem 'sockit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sockit

## USAGE

By loading the gem TCPSocket will get monkey patched adding seamless transparent SOCKS proxy support.  I favor using SS5 for a SOCKS server, so at this point I'm uncertain of absolute compatibility with other SOCKS servers.  I'm following the RFC here; so if (insert other SOCKS server flavor here) follows the RFC everything is in theory compatible.

### CONFIGURATION

You can configure on the singleton class or an instance of the class.  The SOCKS configuration is stored in a class variable; so it is shared across all TCPSocket instances and the singleton, thus changing the configuration in one instance will also affect all other instances.  The configuration is stored in an OpenStruct; you can reference `socks` with a block as shown, where the configuration OpenStruct is yielded to the block; or without in which case the configuration OpenStruct itself is returned.

The defaults are as follows:

    TCPSocket.socks do |socks|
      socks.version = 5
      socks.ignore = ["127.0.0.1"]
      socks.debug = false
    end

Specify your SOCKS server and port:

    TCPSocket.socks do |socks|
      socks.host = "127.0.0.1"
      socks.port = "1080"
    end

If you want to use username/password authentication:

    TCPSocket.socks do |socks|
      socks.username = "username"
      socks.password = "password"
    end

Turn on debug output:

    TCPSocket.socks do |socks|
      socks.debug = true
    end

Ignore some more hosts:

    TCPSocket.socks do |socks|
      socks.ignore << "192.168.0.1"
    end


## CONTRIBUTING

I await your pull request.

# RESOURCES

Source:

* https://github.com/zpatten/sockit

Issues:

* https://github.com/zpatten/sockit/issues

Documentation:

* http://zpatten.github.com/sockit/

# LICENSE

SOCKIT - Zachary's (DevOp) Tool Kit

* Author: Zachary Patten <zachary@jovelabs.net>
* Copyright: Copyright (c) Zachary Patten
* License: Apache License, Version 2.0

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

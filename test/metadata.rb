name 'test'
maintainer 'Renato Covarrubias'
maintainer_email 'rnt@rnt.cl'
license 'Apache-2.0'
description 'Test cookbook for instana-agent'
version '0.1.0'

source_url 'https://github.com/instana/instana-agent-chef' if defined?(source_url)
issues_url 'https://github.com/instana/instana-agent-chef/issues' if defined?(issues_url)
chef_version '>= 12.20.3'

supports 'redhat', '~> 7.3'
supports 'centos', '~> 7.3'

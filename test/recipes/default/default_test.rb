# Inspec test for recipe instana-agent::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe user('root') do
  it { should exist }
end

describe package('instana-agent-dynamic') do
  it { should be_installed }
end

describe service('instana-agent') do
  it { should be_enabled }
  it { should be_installed }
  it { should be_running }
end

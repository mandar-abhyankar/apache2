# # encoding: utf-8

# Inspec test for recipe apache2::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# Test if apache2 package is installed
describe package('apache2') do
  it { should be_installed }
end

# Test if the curl on localhost displays content as given in the template file
describe command('curl localhost') do
  its('stdout') { should match('Hello! Mandar') }
end

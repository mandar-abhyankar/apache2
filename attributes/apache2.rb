# Server to be installed - package name
default['#{cookbook_name}']['servername'] = 'apache2'

# Service to be started - service name
default['apache2']['servicename'] = 'apache2'

# Mood of the day variable
default['apache2']['mood_indc'] = 'great'

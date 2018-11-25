name 'elkserver'
maintainer 'Adam Linkous'
maintainer_email 'alinkous+support@gmail.com'
license 'All Rights Reserved'
description 'Installs/Configures elkserver'
long_description 'Installs/Configures elkserver'
version '0.3.0'
supports 'centos'
chef_version '>= 13.0'
issues_url 'https://github.com/gryte/elkserver/issues' if respond_to?(:issues_url)
source_url 'https://github.com/gryte/elkserver' if respond_to?(:source_url)

depends 'java', '~> 3.1.1'
depends 'elasticsearch', '~> 4.0.4'
# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/elkserver/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/elkserver'

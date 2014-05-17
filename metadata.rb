name              "chef-client"
maintainer        "Reigner S. Yrastorza"
maintainer_email  "reigner@yrastorza.us"
license           "Apache 2.0"
description       "Forked version of GetChef chef-client cookbook"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "2.2.3"
recipe            "chef-client", "Includes the service recipe by default."
recipe            "chef-client::config", "Configures the client.rb from a template."
recipe            "chef-client::service", "Sets up a client daemon to run periodically"
recipe            "chef-client::delete_validation", "Deletes validation.pem after client registers"
recipe            "chef-client::cron", "Runs chef-client as a cron job rather than as a service"

%w{ ubuntu debian redhat centos fedora oracle suse freebsd openbsd mac_os_x mac_os_x_server windows }.each do |os|
  supports os
end

suggests "bluepill"
suggests "daemontools"
suggests "runit", "<= 0.16.2"
depends "cron"

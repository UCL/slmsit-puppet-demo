#!/bin/bash
cd /tmp/vagrant-puppet/manifests && puppet apply --modulepath '/etc/puppet/modules:/tmp/vagrant-puppet/modules-0' base.pp 
cd /tmp/vagrant-puppet/manifests && puppet apply --modulepath '/etc/puppet/modules:/tmp/vagrant-puppet/modules-0' base.pp 
rm -rf /var/lib/puppet/ssl
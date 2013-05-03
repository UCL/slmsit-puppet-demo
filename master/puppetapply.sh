#!/bin/bash
cd /tmp/vagrant-puppet/manifests && puppet apply --modulepath '/etc/puppet/modules:/tmp/vagrant-puppet/modules-0' base.pp --detailed-exitcodes || [ $? -eq 2 ]
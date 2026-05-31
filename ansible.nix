{ config, pkgs, ... }:
#usually roles and hosts in /etc/ansible/.
{
    environment.etc."ansible/ansible.cfg".text = ''
        [defaults]
        inventory = /path/to/ansible/hosts
        host_key_checking = True
        roles_path = /apth/to/ansible/roles

        [ssh_connection]
        pipelining = True
    '';
}

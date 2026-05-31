{ config, pkgs, ... }:
#usually roles and hosts in /etc/ansible/.
{
    environment.etc."ansible/ansible.cfg".text = ''
        [defaults]
        inventory = path_to_hosts file
        remote_user = server_name
        host_key_checking = True
        roles_path = path_to_roles folder

        [ssh_connection]
        pipelining = True
    '';
}

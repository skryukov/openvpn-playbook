Source: https://www.andersontech.consulting/multifactor-everything/

### Setup

```
./bootstrap_ansible.sh
ansible-playbook -i "localhost," -c local --ask-sudo-pass playbook.yml
```

### Create Client''

```
sudo /etc/openvpn/build-client.sh username
```

### Revoking Clients

```
sudo userdel username
sudo /etc/openvpn/revoke-client.sh username
```

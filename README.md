# Ansible Server Configurations

These are my personal server configurations using Ansible. I'm not very good 
at Ansible yet, so there is no reason that anyone should read, let alone use, 
these configurations. Ever.

## Websites

For now, only my single production web server is configured here. I have several
static websites and they are all configured in the `websites.yml` playbook:

```
% ansible-playbook -i hosts -K websites.yml
```

Until I figure out some better way, use `-K` to prompt for the root password 
interactively.

## Home Automation Relay

I use a client/server pair I wrote in Go to relay home automation commands from
"the cloud" to my house. The various moving parts to the hosted side of that
system are configured in `ha_relay.yml`.

```
% ansible-playbook -i hosts -K ha_relay.yml
```

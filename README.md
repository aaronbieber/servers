# Ansible Server Configurations

These are my personal server configurations using Ansible. I'm not very good 
at Ansible yet, so there is no reason that anyone should read, let alone use, 
these configurations. Ever.

## Web Servers

For now, only my production web servers are configured here. The configuration 
process is kicked off using the `websites.yml` playbook:

```
% ansible-playbook -i hosts -K websites.yml
```

Until I figure out some better way, use `-K` to prompt for the root password 
interactively.

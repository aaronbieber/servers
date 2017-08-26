.PHONY: websites harelay default renew

default: websites

websites:
	ansible-playbook -i hosts -K websites.yml

renew:
	ansible-playbook -i hosts -K renew_certs.yml

harelay:
	ansible-playbook -i hosts -K ha_relay.yml

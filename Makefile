.PHONY: websites harelay default renew

default: websites

websites:
	ansible-playbook -i hosts -K websites.yml

rpi:
	ansible-playbook -i hosts -K rpi.yml

renew:
	ansible-playbook -i hosts -K renew_certs.yml

harelay:
	ansible-playbook -i hosts -K ha_relay.yml

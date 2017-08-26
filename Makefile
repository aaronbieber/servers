.PHONY: websites harelay default

default: websites

websites:
	ansible-playbook -i hosts -K websites.yml

harelay:
	ansible-playbook -i hosts -K ha_relay.yml

docker image rm awx-awx -f
rm -rf examples/bc
ansible-builder build -f examples/pytz/execution-environment.yml --container-runtime=docker -c examples/bc --tag awx-awx
ansible-runner --playbook rrule_test.yml run examples/pytz

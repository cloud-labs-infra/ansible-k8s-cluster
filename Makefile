init:
	python3 -m pip install --upgrade pip
	python3 -m pip install -r requirements.txt

# https://github.com/docker/for-mac/issues/6073#issuecomment-1018793677
init-configure-sysfs-for-mac:
	test -z "$(docker ps -q 2>/dev/null)" && osascript -e 'quit app "Docker"'
	brew install jq moreutils yamllint
	echo '{"deprecatedCgroupv1": true}' | \
	  jq -s '.[0] * .[1]' ~/Library/Group\ Containers/group.com.docker/settings.json - | \
	  sponge ~/Library/Group\ Containers/group.com.docker/settings.json
	  open --background -a Docker

init-mac: init init-configure-sysfs-for-mac

# test every scenario with test_sequence from ../../molecule/default/molecule.yml
test:
	molecule test --all

lint:
	molecule lint

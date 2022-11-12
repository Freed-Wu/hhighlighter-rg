#! /usr/bin/env bats
setup() {
	load /usr/lib/bats-support/load.bash
	load /usr/lib/bats-assert/load.bash
	cd "$(dirname "$BATS_TEST_FILENAME")/.." || exit
}

@test help {
	run sh -c ': | ./h -h'
	assert_output -p 'Usage:'
}

@test simple {
	run sh -c 'echo "Hello, world" | RIPGREP_CONFIG_PATH= ./h H l o d'
	assert_output "$(printf "\e[0m\e[1m\e[31mH\e[0me\e[0m\e[1m\e[32mll\e[0m\e[0m\e[1m\e[33mo\e[0m, w\e[0m\e[1m\e[33mo\e[0mr\e[0m\e[1m\e[32ml\e[0m\e[0m\e[1m\e[34md\e[0m")"
}

@test hard {
	run sh -c 'echo "Hello, world" | RIPGREP_CONFIG_PATH= ./h -wiC"yellow blue" hello world'
	assert_output "$(printf "\e[0m\e[1m\e[33mHello\e[0m, \e[0m\e[1m\e[34mworld\e[0m")"
}

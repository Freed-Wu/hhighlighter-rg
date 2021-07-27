#! /usr/bin/env bats
setup(){
	load /usr/lib/bats-support/load.bash
	load /usr/lib/bats-assert/load.bash
	cd "$(dirname "$BATS_TEST_FILENAME")/.." || exit
}


@test 'input from stdin not pipe' {
	run ./h
	assert_output -p 'Usage:'
}


@test 'help' {
	run sh -c ': | ./h -h'
	assert_output -p 'Usage:'
}

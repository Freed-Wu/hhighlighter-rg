# hhighlighter-rg

[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/Freed-Wu/hhighlighter-rg/main.svg)](https://results.pre-commit.ci/latest/github/Freed-Wu/hhighlighter-rg/main)
[![github/workflow](https://github.com/Freed-Wu/hhighlighter-rg/actions/workflows/main.yml/badge.svg)](https://github.com/Freed-Wu/hhighlighter-rg/actions)
[![codecov](https://codecov.io/gh/Freed-Wu/hhighlighter-rg/branch/main/graph/badge.svg)](https://codecov.io/gh/Freed-Wu/hhighlighter-rg)

[![github/downloads](https://shields.io/github/downloads/Freed-Wu/hhighlighter-rg/total)](https://github.com/Freed-Wu/hhighlighter-rg/releases)
[![github/downloads/latest](https://shields.io/github/downloads/Freed-Wu/hhighlighter-rg/latest/total)](https://github.com/Freed-Wu/hhighlighter-rg/releases/latest)
[![github/issues](https://shields.io/github/issues/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/issues)
[![github/issues-closed](https://shields.io/github/issues-closed/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/issues?q=is%3Aissue+is%3Aclosed)
[![github/issues-pr](https://shields.io/github/issues-pr/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/pulls)
[![github/issues-pr-closed](https://shields.io/github/issues-pr-closed/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/pulls?q=is%3Apr+is%3Aclosed)
[![github/discussions](https://shields.io/github/discussions/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/discussions)
[![github/milestones](https://shields.io/github/milestones/all/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/milestones)
[![github/forks](https://shields.io/github/forks/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/network/members)
[![github/stars](https://shields.io/github/stars/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/stargazers)
[![github/watchers](https://shields.io/github/watchers/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/watchers)
[![github/contributors](https://shields.io/github/contributors/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/graphs/contributors)
[![github/commit-activity](https://shields.io/github/commit-activity/w/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/graphs/commit-activity)
[![github/last-commit](https://shields.io/github/last-commit/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/commits)
[![github/release-date](https://shields.io/github/release-date/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/releases/latest)

[![github/license](https://shields.io/github/license/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg/blob/master/LICENSE)
[![github/languages](https://shields.io/github/languages/count/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)
[![github/languages/top](https://shields.io/github/languages/top/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)
[![github/directory-file-count](https://shields.io/github/directory-file-count/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)
[![github/code-size](https://shields.io/github/languages/code-size/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)
[![github/repo-size](https://shields.io/github/repo-size/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)
[![github/v](https://shields.io/github/v/release/Freed-Wu/hhighlighter-rg)](https://github.com/Freed-Wu/hhighlighter-rg)

<!-- mdformat-toc start --slug=github --no-anchors --maxlevel=6 --minlevel=2 -->

- [Usage](#usage)
- [Requirements](#requirements)

<!-- mdformat-toc end -->

Another [hhighlighter](https://github.com/EliverLara/hhighlighter/), but this
use [ripgrep](https://github.com/BurntSushi/ripgrep/) not
[ack](http://betterthangrep.com).

![screenshot](https://user-images.githubusercontent.com/32936898/201461185-b66e8c2a-14e4-42c7-9509-6ccdfc8d5998.png)

The commands in the screenshot can be found in [unit test](test/test.bats).

## Usage

```shell
$ ./h
Usage: PROGRAM | h [OPTS] ARGS...

    Options from rg (ripgrep):
    -i                     search case-insensitively
    -w                     only show matches surrounded by word boundaries
    -F                     treat pattern as literal string
    -P                     enable matching with PCRE2

    -C COLOR_FORMAT        highlight color format
    -n                     dry run
    -h                     print this help message
    -V                     print version information
```

## Requirements

- [bash](https://www.gnu.org/software/bash/)
- [GNU coreutils](https://www.gnu.org/software/coreutils/)
- [ripgrep](https://github.com/BurntSushi/ripgrep/)

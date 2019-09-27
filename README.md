# Pad number

[![IRC][IRC Badge]][IRC]

###### [Usage](#usage) | [Documentation](#commands) | [Contributing](CONTRIBUTING)

> [Kakoune] extension to pad numbers.

## Installation

### [Pathogen]

``` kak
pathogen-infect /home/user/repositories/github.com/alexherbo2/pad-number.kak
```

## Usage

- Select numbers.
- Enter `:pad-number`.

### Examples

**Input**

```
1
2
3
4
5
6
7
8
9
10
```

**Output**

```
01
02
03
04
05
06
07
08
09
10
```

## Commands

- `pad-number`: Pad number with `[n]` leading zeroes.

[Kakoune]: https://kakoune.org
[IRC]: https://webchat.freenode.net/#kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
[Pathogen]: https://github.com/alexherbo2/pathogen.kak

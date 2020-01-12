# pad-number.kak

Pad numbers with leading zeros.

## Installation

Add [`pad-number.kak`](rc/pad-number.kak) to your autoload or source it manually.

## Usage

Select a number or multiple numbers and call `pad-number`.
An optional argument is possible for the desired padding.

## Configuration

``` kak
map global user 0 ': pad-number %val{count}<ret>' -docstring 'Pad numbers with leading zeros'
```

[Kakoune]: https://kakoune.org

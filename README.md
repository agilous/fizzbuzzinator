# Fizzbuzzinator
An implementation of a variation of the [FizzBuzz](https://rosettacode.org/wiki/FizzBuzz)
game as whimsical, and perhaps even less so, than the game itself.

Rules of this variation, applied in the order given below, are:
1. Any number divisible by 15 returns "Fizzbuzz"
1. Any number containing the digit '3' or that is itself divisible by 3 returns
"Fizz"
1. Any number containing the digit '5' or that is itself divisible by 5 returns
"Fizz"
1. Any other number returns itself

## Prerequisites
1. [asdf](https://asdf-vm.com/#/) (or the version manager of your preference)
1. [ruby](https://www.ruby-lang.org/en/) (install via asdf)

## Setup
```sh
git clone git@github.com:agilous/fizzbuzzinator
cd fizzbuzzinator
asdf install
```

## Usage
In an irb session:
```ruby
irb(main):001:0> require './fizzbuzzinator'
=> true
irb(main):002:0> Fizzbuzzinator.fizzbuzzinate(27)
=> "Fizz"
```

## Specs
Run: `bundle exec rspec fizzbuzzinator_spec.rb`

## Contributing
GitHub's guide for [Contributing to Open Source](https://guides.github.com/activities/contributing-to-open-source/)
offer's the best advice.

#### tl;dr
1. [Fork it](https://help.github.com/articles/fork-a-repo/)!
1. Create your feature branch: `git checkout -b cool-new-feature`
1. Commit your changes: `git commit -am 'Added a cool feature'`
1. Push to the branch: `git push origin cool-new-feature`
1. [Create new Pull Request](https://help.github.com/articles/creating-a-pull-request/).
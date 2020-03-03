# Engima

<p align="center">
  <img width="600" height="400" src="https://logopond.com/logos/9e3cd4698cef143d26ef429bd3b9ff2b.png">
</p>

<p align="center">
<a href="LICENSE"><img alt="Software License" src="https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square"></a>
  <a href="https://codeclimate.com/github/tylertomlinson/Enigma/maintainability"><img src="https://api.codeclimate.com/v1/badges/8202f4f70c28f421c71d/maintainability" /></a>
</p>

<p align="center">
  Replicating the infamous World War 2 Enigma Machine in raw ruby by using CLI to convert strings to and from various encodings. https://en.wikipedia.org/wiki/Enigma_machine
</p>

## Objective
Implement the cipher algorithm to encrypt and decrypt messages.

### Installation

1. Clone the repo
```sh
git clone https://github.com/tylertomlinson/Enigma.git
```
2. you will be able to use the CLI like this:
```
$ ruby ./lib/encrypt.rb message.txt encrypted.txt
Created 'encrypted.txt' with the key 82648 and date 240818
$ ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 82648 240818
Created 'decrypted.txt' with the key 82648 and date 240818
```

## Contributing
- Fork it (https://github.com/tylertomlinson/Enigma/fork)
- Create your feature branch (git checkout -b feature/fooBar)
- Commit your changes (git commit -m 'Add some fooBar')
- Push to the branch (git push origin feature/fooBar)
- Create a new Pull Request

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details

## Acknowledgments

* Turing Mod1 Instructors FTW
* Inspiration

______________________________________________________________________________________________________________________________

 ## [Enigma](https://backend.turing.io/module1/projects/enigma) solo project Mod1

### Functionality: 3
> Encrypt and decrypt both working. CLI for encrypt.rb and decrypt.rb implemented correctly. 
### Object Oriented Programming: 4
> Implemented a module to incorporate DRY into my code. The module is generating numbers, dates, and characters. I didn't see a great use case for inheritance on this project.
### Ruby Conventions and Mechanics: 4
> Classes, methods, and variables are named clearly and are very readable when strung together. Code is formatted accordingly (Ruby style guide). All enumerables are the most efficient tool within given logic.
### Test Driven Development: 4
> Every method is tested, including edge cases. Using stubs several times within different test across files to be independent of other classes. SimpleCov covering 100% . 28 runs, 42 assertions via Rakefile.
### Version Control: 4
> 90+ commits that explain the functionality of each. All commits are used for a reason and arent just thrown around. Pull requests explain in detail was was done logically as well as the functionallity added. Breakdown of methods and test within each PR. 

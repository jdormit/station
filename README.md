# Station
> Declarative workstation management

## Usage

Station is a tool that lets you declaratively manage the programs and
configuration files on your personal computer. Think of it like
[Terraform](https://terraform.io) for your laptop.

Station configuration files are written in [Common
Lisp](https://lisp-lang.org/). The default Station configuration file
is `~/.config/station/config.lisp`, but you can tell Station to use an
alternate configuration file by passing the `-c`/`--config` option.

A Station configuration consists of *providers* and *resources*. A
resource is a piece of state you want Station to manage, such as a
package installed from your package manager or a configuration
file. Providers are what tell Station how to manage types of
resources - for example, the `homebrew` provider exposes the
`homebrew-package` resource that allows Station to manage packages
installed from the Homebrew package manager for macOS.

Station keeps a record of all of the state it is managing. When you
run Station, it loads your configuration file and compares the current
state of your workstation with the desired state. If it detects that a
change needs to be made, for example a program installed or a file
changed, it generates an update plan, displays it, and asks for your
approval to make the change. Station will never make changes to your
computer (outside of manipulating its own state database) without
explicit user approval.

Once a resource is being managed by Station, subsequent changes to
that resource made outside of Station will be reverted next time
Station is run. For instance, if Station is managing a configuration
file and you edit that file outside of the Station configuration, next
time you run Station your edits will be lost. This ensures that the
Station configuration is always an up-to-date, reproducible snapshot
of the desired workstation state.

## Installation
It's not done yet :)

## Author

* Jeremy Dormitzer (jeremy.dormitzer@gmail.com)

## Copyright

Copyright (c) 2021 Jeremy Dormitzer (jeremy.dormitzer@gmail.com)

## License

Licensed under the MIT License.

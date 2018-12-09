## Getting started

Prerequisites: VirtualBox and Vagrant are installed

From the root of this repository, run `vagrant up`. In windows, run this command through Powershell.

If successful, you should now have a webserver ready to use.

Point your browser to `192.168.33.10` and you should see the welcome screen. 

You can also ssh into the running VM with `vagrant ssh`.

## Development

The welcome screen file can be found at `./development/index.html`. If you make a change to this file on your **host** machine, you'll see the change reflected when you refresh your browser.

The `./development` directory is synchronized automatically between the host machine and VM. Any changes made on the host machine will be synced to the VM and vice-versa.

The `./development` directory is mapped directly to `http://192.168.33.10/`. Any file you drop in here will be served automatically, e.g. if you create a file `./development/picture.png`, it can be reached via `http://192.168.33.10/picture.png`.

## Hi-jacking

In your /etc/hosts file, add the entry:

```
192.168.33.10 local.development
```

For Windows 10, this file is typically located at `C:\Windows\System32\drivers\etc\hosts`
* See https://blog.pcrisk.com/windows/12358-how-to-edit-hosts-file-on-windows-10 for more details

This will hijack any requests to http://local.development to 192.168.33.10.

Point your browser to "local.development/" and you should see the same welcome screen.
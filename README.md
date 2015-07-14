# Example vagrant box running nginx and provisioned by puppet.

## Requirements

[Vagrant] (https://www.vagrantup.com/)

[Virtualbox] (https://www.virtualbox.org/)

[Bundle] (http://bundler.io/)

make

## Usage

To use this box once you have installed the requirements just run the following command

    make

## Testing

At the end of the puppet provision this configuration will run some basic serverspec test to ensure the configuration works.

### Issues

There is a known issue if you do not currently have the required vagrant plugin, you will get the following error

    vm:
    * The '' provisioner could not be found.

If this happens it is because vagrant cannot handle using a plugin that has just been installed. Run make again and everything should work as expected.

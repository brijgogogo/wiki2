# Home Assistant

- Home Assistant Core: Home automation application itself, written in Python
- Home Assistant A dedicated OS for Home Assistant. It includes Home Assistant Core, Supervisor, Add-on store, Full system management.

# YAML
HA configuration syntax.
Example:
```yaml
string: "string",
string: string
number: 1,
float: 4.5,
boolean: true
boolean: false
# comment
doors
- list item # each item in a collection starts with a -
- list item
key: [list-item, list-item] # list can be in square brackets
key: value # mapping/dictionary
key: value # if duplicate keys, the last value for a key is used
```

HA Environment Variables: access using !env_var <variable_name>
example:
password: !env_var PASSWORD

HA is case-sensitive, so 'on' is not same as 'On'


## Integration
provides core logic for some functionality


## platform
makes the connection to a specific software or hardware platform


## Ikea updates
https://github.com/zigpy/zigpy/wiki/OTA-Device-Firmware-Updates

- [NodeRed](NodeRed.md)


## Blueprints
- https://epmatt.github.io/awesome-ha-blueprints/



## Unifi Adopting issue
https://community.spiceworks.com/how_to/173814-remove-ubiquiti-unifi-ap-stuck-in-adoption-failure-loop
sudo syswrapper.sh restore-default
set-inform http://192.168.8.22:8080/inform



## Security System
https://slacker-labs.com/2020/04/10/how-i-secured-my-home-using-home-assistant-part-one/

https://www.youtube.com/watch?v=pgPHnJnsdu0

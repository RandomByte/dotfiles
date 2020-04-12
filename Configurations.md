# Configurations
Various configurations for tools which are not (yet?) automatically configured.

## Ubuntu
### Sublime

**Key Bindings**
```json
[
	{ "keys": ["alt+left"], "command": "move_to", "args": {"to": "bol", "extend": false} },
	{ "keys": ["alt+right"], "command": "move_to", "args": {"to": "eol", "extend": false} },
	{ "keys": ["alt+shift+left"], "command": "move_to", "args": {"to": "bol", "extend": true} },
	{ "keys": ["alt+shift+right"], "command": "move_to", "args": {"to": "eol", "extend": true} },
	{ "keys": ["alt+up"], "command": "move_to", "args": {"to": "bof", "extend": false} },
	{ "keys": ["alt+down"], "command": "move_to", "args": {"to": "eof", "extend": false} },
	{ "keys": ["alt+shift+up"], "command": "move_to", "args": {"to": "bof", "extend": true} },
	{ "keys": ["alt+shift+down"], "command": "move_to", "args": {"to": "eof", "extend": true} },
	{ "keys": ["ctrl+up"], "command": "select_lines", "args": {"forward": false } },
	{ "keys": ["ctrl+down"], "command": "select_lines", "args": {"forward": true } },
]
```

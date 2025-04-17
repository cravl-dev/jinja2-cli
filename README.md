# $ jinja2
A CLI interface to Jinja2
```
$ jinja2 helloworld.tmpl data.json --format=json
$ cat data.json | jinja2 helloworld.tmpl
$ curl -s http://httpbin.org/ip | jinja2 helloip.tmpl
$ curl -s http://httpbin.org/ip | jinja2 helloip.tmpl > helloip.html
```

## Installation Options
### Install with pipx
`$ pipx install jinja2-cli`

### Install with [pkgx](https://pkgx.dev/pkgs/github.com/mattrobenolt/jinja2-cli/)
`$ sh <(curl https://pkgx.sh) jinja2`

### Build and install with `make`:
`$ make install`

## Usage
```
Usage: jinja2 [options] <input template> <input data>

Options:
  --version             show program's version number and exit
  -h, --help            show this help message and exit
  -f FORMAT, --format=FORMAT
                        format of input variables: auto, env, ini, json,
                        json5, querystring, toml, xml, yaml, yml
  -e EXTENSIONS, --extension=EXTENSIONS
                        extra jinja2 extensions to load
  -D key=value          Define template variable in the form of key=value
  -s SECTION, --section=SECTION
                        Use only this section from the configuration
  --strict              Disallow undefined variables to be used within the
                        template
  -o FILE, --outfile=FILE
                        File to use for output. Default is stdout.
  --trim-blocks         Trim first newline after a block
  --lstrip-blocks       Strip first newline after a block
  --env-opt=option=value
                        Define jinja2 Environment option in the form of
                        option=value

```

## Optional Data Source Support
### YAML
If `PyYAML` is present, you can use YAML as an input data source.

`$ pipx install jinja2-cli[yaml]`

### TOML
If `toml` is present, you can use TOML as an input data source.

`$ pipx install jinja2-cli[toml]`

### XML
If `xmltodict` is present, you can use XML as an input data source.

`$ pipx install jinja2-cli[xml]`

### HJSON
If `hjson` is present, you can use HJSON as an input data source.

`$ pipx install jinja2-cli[hjson]`

### JSON5
If `json5` is present, you can use JSON5 as an input data source.

`$ pipx install jinja2-cli[json5]`

## TODO
* Variable inheritance and overrides
* Tests!

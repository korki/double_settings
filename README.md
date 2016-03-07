# Double settings


## Usage

In Gemfile add:

```
gem 'double_settings', github: 'korki/double_settings'

```

Example config file:

config/test_conf.yml
```
test:
  key1: value1
  key2: value2

```

How to get values?

```
Settings.test_conf.key1

```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

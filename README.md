# Double settings


## Usage

In Gemfile add:

```
gem 'double_settings', github: 'korki/double_settings'

```

### Store values

Example config file:

config/test_conf.yml
```
test:
  key1: value1
  key2: value2

```

Same config but in environmental variables:

```
ENV['TEST_KEY1'] = value1
ENV['TEST_KEY2'] = value1
```

### Get values

```
Settings.test_conf.key1

```

### Built-in methods

```
Settings.environment

```

## Credits

[@zuren](http://github.com/zuren)

[@forvalho](http://github.com/forvalho)

[@fmd](http://github.com/fmd)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

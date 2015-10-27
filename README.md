# <a name="title"></a> Busser::RunnerPlugin::Goss

A Busser runner plugin for Goss

## <a name="installation"></a> Installation and Setup

Please read the Busser [plugin usage][plugin_usage] page for more details.

## <a name="usage"></a> Usage

This busser plugin uses the compiled release of goss and is only supported
on linux-amd64 at the moment. When the goss project releases binaries for
different platforms, this plugin will be updated.

Please put test files into [COOKBOOK]/test/integration/[SUITES]/goss/

```cookbook
`-- test
    `-- integration
        `-- default
            `-- goss
                `--default_spec.goss
```


## <a name="development"></a> Development

* Source hosted at [GitHub][repo]
* Report issues/questions/feature requests on [GitHub Issues][issues]

Pull requests are very welcome! Make sure your patches are well tested.
Ideally create a topic branch for every separate change you make. For
example:

1. Fork the repo
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## <a name="authors"></a> Authors

Created and maintained by [Mathieu Sauve-Frankel][author] (<msf@kisoku.net>)

## <a name="license"></a> License

Apache 2.0 (see [LICENSE][license])


[author]:           https://github.com/kisoku
[issues]:           https://github.com/kisoku/busser-goss/issues
[license]:          https://github.com/kisoku/busser-goss/blob/master/LICENSE
[repo]:             https://github.com/kisoku/busser-goss
[plugin_usage]:     http://docs.kitchen-ci.org/busser/plugin-usage

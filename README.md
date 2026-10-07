# DITA Bootstrap Swagger

<a href="https://www.dita-ot.org"><img src="https://www.dita-ot.org/images/dita-ot-logo.svg" align="right" height="55"></a>

_DITA Bootstrap Swagger_ is a [DITA Open Toolkit plug-in](https://www.dita-ot.org/plugins) that extends HTML output. It renders each Swagger operation as a collapsed [Bootstrap accordion](https://getbootstrap.com/docs/5.3/components/accordion/) item, matching
[petstore.swagger.io](https://petstore.swagger.io/#/)'s own collapsed-by-default endpoint list, when building with
[DITA Bootstrap](https://dita-bootstrap.org/html)'s `html5-bootstrap` transtype.

![](https://dita-bootstrap.org/dita-bootstrap.swagger/src/swagger.png)

<!-- MarkdownTOC levels="2,3" -->

- [Installation](#installation)
  - [Installing DITA-OT](#installing-dita-ot)
  - [Installing the Plug-in](#installing-the-plug-in)
- [Using](#using)
- [License](#license)

<!-- /MarkdownTOC -->

## Installation

The _DITA Bootstrap Swagger_ plug-in has been tested with [DITA-OT 4.x](https://www.dita-ot.org/download). Use the
latest version for best results.

### Installing DITA-OT

1.  Download the latest distribution package from the project website at
    [dita-ot.org/download](https://www.dita-ot.org/download).
2.  Extract the contents of the package to the directory where you want to install DITA-OT.
3.  **Optional**: Add the absolute path for the `bin` directory to the _PATH_ system variable.

    This defines the necessary environment variable to run the `dita` command from the command line.

See the [DITA-OT documentation](https://www.dita-ot.org/dev/topics/installing-client.html) for detailed installation
instructions.

### Installing the Plug-in

- Run the plug-in installation commands:

```console
dita install fox.jason.extend.css
dita install org.dita-bootstrap.html
dita install fox.jason.passthrough.swagger
dita install org.dita-bootstrap.swagger
```

## Using

Specify the `html5-bootstrap` format when building output with the `dita` command, same as any other
`html5-bootstrap` build - no extra parameters are needed:

```console
dita --input=path/to/your.ditamap \
     --format=html5-bootstrap
```

## License

[Apache 2.0](LICENSE) © 2026 Jason Fox

> [!NOTE]
> The sample documentation is rendered from the Swagger [Petstore][1] example API definition, which is
> published by the Swagger API project under the Apache 2.0 license.

[1]: https://github.com/swagger-api/swagger-petstore

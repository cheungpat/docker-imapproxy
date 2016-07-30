# IMAP Proxy Docker Image

This is a docker image for running [SquirrelMail's IMAP Proxy](http://www.imapproxy.org) (`imapproxy`) in
a Docker container.

IMAP Proxy is good for keeping IMAP connection open if the client does
not. This usually happens for web-based client which opens a new IMAP connection
for each HTTP request.

## Usage

```shell
$ docker run -i -e SERVER_HOSTNAME=imap.gmail.com cheungpat/imapproxy
```

The `SERVER_HOSTNAME` environment is the hostname of
the IMAP server where `imapproxy` should connect to. In the above example,
`imapproxy` will proxy IMAP connections to `imap.gmail.com`. You should replace
`imap.gmail.com` with the hostname of another IMAP server.

## Configuration

This docker image can be configured using environment variables. Here is 
a list of commonly used environment variables:

* `SERVER_HOSTNAME` - hostname of the IMAP server to proxy IMAP connection to,
  default is `localhost`
* `SERVER_PORT` - port of the IMAP server to proxy IMAP connection to, default
  is `143`
* `FORCE_TLS` - whether to force the use of STARTTLS when making a connection,
  default is `yes`

For a list of environment variables and their default settings, see
[imapproxy.conf.tmpl](imapproxy.conf.tmpl) file.

## Author

This repo is created by [Kwok-kuen Cheung](https://github.com/cheungpat).
IMAP Proxy was originally written by Dave McMurtrie. IMAP Proxy project page at
http://www.imapproxy.org.

## License

This repo is licensed under
[MIT License](http://www.opensource.org/licenses/mit-license.php). IMAP Proxy
is licensed under
[GNU GPL license](http://www.gnu.org/licenses/gpl.html).

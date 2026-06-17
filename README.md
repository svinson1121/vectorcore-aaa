# VectorCore AAA

VectorCore AAA is a standalone 3GPP AAA service derived from the Osmocom osmo-epdg project. It provides AAA functionality for VectorCore non-3GPP access use cases, including SWm/ePDG and STa/TWAG authentication flows.

VectorCore AAA began as a fork/split of the AAA-related components from Osmocom osmo-epdg. The codebase has been modified for standalone VectorCore AAA use cases, including trusted and untrusted non-3GPP access authentication.

## Upstream Attribution

VectorCore AAA is derived from the Osmocom osmo-epdg project.

This project is not affiliated with, sponsored by, or endorsed by the Osmocom project. Original Osmocom copyright notices and license files are preserved where applicable. New VectorCore-specific changes are maintained separately under the same applicable license unless otherwise stated.

## Scope

This repository contains the standalone AAA service used by VectorCore non-3GPP access components. It includes Diameter AAA support for SWm, STa, S6b, and SWx flows, plus EAP-AKA and EAP-AKA' handling where required by the relevant 3GPP access procedures.

The repository identity, package name, release artifact, and service name are `vectorcore-aaa`. The Erlang application and module identity uses `vectorcore_aaa`.

## Building

Install Erlang and rebar3 packages.
```sh
make clean
make build
```
## Testing

```sh
rebar3 eunit
```

## Running

```sh
ERL_FLAGS="-config  config/aaa.config"  _build/default/bin/vectorcore-aaa
```


The default local configuration file is `config/aaa.config`. Deployment packaging should use the VectorCore runtime path convention:

```text
/etc/vectorcore/aaa/config.yaml
/opt/vectorcore/aaa/bin/vectorcore-aaa
/var/lib/vectorcore/aaa/
/var/log/vectorcore/aaa/
```

## Rename / Migration Note

Earlier development versions of this project may have used the names `osmo_aaa` or `osmo-aaa`. These names have been replaced by `vectorcore_aaa` for Erlang/application identifiers and `vectorcore-aaa` for repository, package, service, and deployment identifiers.

## License

The upstream Osmocom license terms and copyright notices are preserved in this source tree. See `COPYING` and `NOTICE.md`.

## Historical References

The original upstream project is documented at the Osmocom osmo-epdg project pages:

```text
https://osmocom.org/projects/osmo-epdg/wiki/
https://gitea.osmocom.org/erlang/osmo-epdg
```

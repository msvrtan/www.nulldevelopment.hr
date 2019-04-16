# www.nulldevelopment.hr
Pages for www.nulldevelopment.hr, built in Rust using Rocket framework

### Docker setup:

#### Deps image: www_nulldevelopment_hr/deps:*

Image where `dummy_app` is copyed to and dependencies are fetched. This way pre-cached dev/release images can just run build/check on the already retrieved dependencies.

 * Based on: nulldevelopment/rusty-nightly:2019-04-14
 * Folder: etc/docker/rust-deps/
 * Build: `make build-deps-image`

#### Development pre-cached deps image: www_nulldevelopment_hr/dev-deps:*

By splitting dev/release dep images, hopefully development will be easier: dev one is used for handling local development while release one will be used to help with creating releases

 * Based on: www_nulldevelopment_hr/deps:latest
 * Folder: etc/docker/rust-dev-deps/
 * Build: `make build-dev-deps-image`

#### Release pre-cached deps image: www_nulldevelopment_hr/release-deps:*

 * Based on: www_nulldevelopment_hr/deps:latest
 * Folder: etc/docker/rust-release-deps/
 * Build: `make build-release-deps-image`


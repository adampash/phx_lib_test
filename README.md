## Using Phoenix in a library

**phx_lib:** A library that uses phoenix

**lib_consumer:** An app that uses phx_lib

**Goal:** When running `iex -S mix` in `lib_consumer`, I'd like the
`phx_lib` dependency to run its Phoenix server.

Currently, I've tried adding `server: true` to the endpoint config in each
app. When run `iex -S mix` from `phx_lib`, the server starts as expected. If I run
`iex -S mix` from `lib_consumer`, the Phoenix app never starts listening (even though
`Application.start` is called from the application using that dependency. 

[This is the meaningful commit](https://github.com/adampash/phx_lib_test/commit/6e10c7402261602aa0226c48eb185efbea76cf91). The rest is just the result of:

```bash
mix phx.new phx_lib --no-ecto --no-brunch 
mix new lib_consumer --sup 
```

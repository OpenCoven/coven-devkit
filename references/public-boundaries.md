# Public boundaries

- The local daemon socket API is a compatibility boundary. Incompatible response/behavior changes require a new `apiVersion` from `GET /health` and migration notes.
- `@opencoven/coven` must handshake before depending on response shapes.
- comux and OpenClaw integrations are clients; daemon behavior remains in Rust.
- Public roadmap language must distinguish shipped, now, next, later, and lab work.
- Do not add future harness support based on imagined CLI behavior. Require real CLI smoke evidence first.

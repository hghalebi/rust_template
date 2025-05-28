# 🦀 Template Usage Guide

This directory is a **cargo-generate template** ready for use.

## 📋 For Template Users

To use this template to create new projects:

```bash
# Install dependencies
cargo install cargo-generate just
gh auth login

# Create a new project
cargo generate --git https://github.com/yourname/rust-starter-template.git --name my-new-project
cd my-new-project
./post_gen.sh
```

## 🔧 Template Status

### Current State ✅
- `Cargo.toml` uses `name = "{{project-name}}"` - Template ready
- `Dockerfile` uses `CMD ["./target/release/{{project-name}}"]` - Template ready
- `src/main.rs` includes Remolab ASCII header
- All dependencies optimized (removed unused `anyhow`)

### Template Variables

When users run `cargo generate`, these variables will be replaced:
- `{{project-name}}` → User's chosen project name
- `{{authors}}` → Can be configured in cargo-generate

### Testing the Template

To test template generation locally:
```bash
cargo generate --path . --name test-project
cd test-project
just check
just docker-build
just run --help
```

### Dependencies Included

**Runtime:**
- `clap` - Command line argument parsing
- `log` - Logging facade
- `env_logger` - Environment-based logger

**Development:**
- `pretty_assertions` - Better test output

## 🎯 Ready-to-Use Features

✅ **Development Tools**: justfile, clippy, rustfmt, editorconfig  
✅ **CI/CD**: GitHub Actions workflow  
✅ **Docker**: Multi-stage build with dependencies  
✅ **CLI**: clap-based command line interface  
✅ **Logging**: env_logger with configurable verbosity  
✅ **Testing**: pretty_assertions for better test output  
✅ **Automation**: GitHub repo creation script  
✅ **Branding**: Remolab ASCII header 
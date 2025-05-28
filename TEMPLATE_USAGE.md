# 🦀 Template Usage Guide

This directory serves as both a **working Rust project** and a **cargo-generate template**.

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

## 🔧 For Template Maintainers

### Current State
- `Cargo.toml` uses `name = "rust_template"` for testing
- `Dockerfile` uses `CMD ["./target/release/rust_template"]` for testing
- All other files are template-ready

### To Publish as Template

Before pushing to GitHub as a template repository, update these files:

1. **Cargo.toml** - Change line 2:
   ```toml
   name = "{{project-name}}"
   ```

2. **Dockerfile** - Change line 18:
   ```dockerfile
   CMD ["./target/release/{{project-name}}"]
   ```

### Template Variables

When users run `cargo generate`, these variables will be replaced:
- `{{project-name}}` → User's chosen project name
- `{{authors}}` → Can be configured in cargo-generate

### Testing the Template

You can test locally with:
```bash
# Test as working project
just check
just docker-build
just run --help

# Test template generation (after making template changes)
cargo generate --path . --name test-project
```

## 🎯 Ready-to-Use Features

✅ **Development Tools**: justfile, clippy, rustfmt, editorconfig  
✅ **CI/CD**: GitHub Actions workflow  
✅ **Docker**: Multi-stage build with dependencies  
✅ **CLI**: clap-based command line interface  
✅ **Logging**: env_logger with configurable verbosity  
✅ **Testing**: pretty_assertions for better test output  
✅ **Automation**: GitHub repo creation script 
// ╭─────────────────────────────────────╮
// │  Template created by Remolab       │
// ╰─────────────────────────────────────╯

use clap::Parser;

/// Example CLI App
#[derive(Parser)]
#[command(name = "MyApp", version, about)]
struct Cli {
    #[arg(short, long, action = clap::ArgAction::Count)]
    verbose: u8,
}

fn main() {
    let cli = Cli::parse();
    env_logger::init();
    log::info!("Verbosity level: {}", cli.verbose);
}

#!/bin/bash
set -euo pipefail

API_DIR="$(pwd)/../api"
CLI_DIR="$(pwd)/../cli"
BIN_DIR="$(pwd)/../bin"

echo "API Directory: $API_DIR"
echo "CLI Directory: $CLI_DIR"
echo "BIN Directory: $BIN_DIR"

export GOOS=linux
export GOARCH=amd64

mkdir -p "$BIN_DIR"

# Build API
cd "$API_DIR"
echo "[BUILD] Building API..."
go build -o "$BIN_DIR/kprobe-api"
echo "[SUCCESS] API build completed successfully"

# Build CLI
cd "$CLI_DIR"
echo "[BUILD] Building CLI..."
go build -o "$BIN_DIR/kprobe-cli"
echo "[SUCCESS] CLI build completed successfully"

#!/bin/bash
# Test script for symbol detection

echo "Testing symbol detection..."
echo "=========================="
echo

# Run the query and extract just the @name captures
cd ../tree-sitter-fortran
SYMBOLS=$(npx tree-sitter query ../fortran.novaextension/Queries/symbols.scm ../fortran.novaextension/test_symbols.f90 --captures 2>&1 | \
  grep "capture: 0 - name" | \
  sed 's/.*text: `\(.*\)`/\1/' | \
  sort -u)

echo "Detected symbols:"
echo "$SYMBOLS"
echo

echo "Expected symbols:"
echo "test_program"
echo "test_module"
echo "my_subroutine"
echo "my_function"
echo "types_module"
echo "my_type"
echo

# Check if all expected symbols are found
EXPECTED=("test_program" "test_module" "my_subroutine" "my_function" "types_module" "my_type")
MISSING=()

for sym in "${EXPECTED[@]}"; do
  if ! echo "$SYMBOLS" | grep -q "^${sym}$"; then
    MISSING+=("$sym")
  fi
done

if [ ${#MISSING[@]} -eq 0 ]; then
  echo "✓ All expected symbols detected!"
  exit 0
else
  echo "✗ Missing symbols: ${MISSING[*]}"
  exit 1
fi

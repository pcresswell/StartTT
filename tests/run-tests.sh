#!/bin/bash

# Run all PlantUML test files
for test_file in *.puml; do
    echo "Testing: $test_file"
    java -jar /plantuml/plantuml.jar "$test_file"
    if [ $? -eq 0 ]; then
        echo "✅ Test passed: $test_file"
    else
        echo "❌ Test failed: $test_file"
        exit 1
    fi
done

echo "All tests completed successfully!"

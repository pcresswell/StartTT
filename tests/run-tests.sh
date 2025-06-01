#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Run all PlantUML test files
for test_file in *.puml; do
    echo -e "\n🔍 Testing: ${test_file}"
    echo "----------------------------------------"
    
    # Run PlantUML with debug output
    java -jar /plantuml/plantuml.jar -verbose "$test_file"
    result=$?
    
    if [ $result -eq 0 ]; then
        echo -e "\n${GREEN}✅ Test passed: $test_file${NC}"
    else
        echo -e "\n${RED}❌ Test failed: $test_file${NC}"
        echo "\nPlantUML Error Code: $result"
        echo "See: https://plantuml.com/error"
        exit 1
    fi
    
    echo "----------------------------------------"
done

echo -e "\n${GREEN}🎉 All tests completed successfully!${NC}"

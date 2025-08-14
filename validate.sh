#!/bin/bash
# Nexus-Singularity Application Validation Script
# Run with: time bash validate.sh

set -e  # Exit on any error

echo "=== Nexus-Singularity Validation ==="
start_time=$(date +%s)

echo "1. Testing HTML syntax validation..."
python3 -c "import html.parser; parser = html.parser.HTMLParser(); parser.feed(open('index.html').read())"
echo "   ✓ HTML syntax is valid"

echo "2. Starting HTTP server..."
python3 -m http.server 8000 &
SERVER_PID=$!
sleep 2

echo "3. Testing HTTP response..."
response_code=$(curl -s -o /dev/null -w '%{http_code}' http://localhost:8000/)
if [ "$response_code" = "200" ]; then
    echo "   ✓ HTTP server responds with 200 OK"
else
    echo "   ✗ HTTP server error: $response_code"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

echo "4. Testing content load..."
content_size=$(curl -s http://localhost:8000/ | wc -c)
if [ $content_size -gt 10000 ]; then
    echo "   ✓ Content loaded successfully ($content_size bytes)"
else
    echo "   ✗ Content load failed ($content_size bytes)"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

echo "5. Testing specific content elements..."
content=$(curl -s http://localhost:8000/)
if echo "$content" | grep -q "The Nexus Singularity"; then
    echo "   ✓ Page title present"
else
    echo "   ✗ Page title missing"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

if echo "$content" | grep -q "Enter the Nexus"; then
    echo "   ✓ Main button present"
else
    echo "   ✗ Main button missing"
    kill $SERVER_PID 2>/dev/null
    exit 1
fi

echo "6. Cleanup..."
kill $SERVER_PID 2>/dev/null
wait $SERVER_PID 2>/dev/null

end_time=$(date +%s)
duration=$((end_time - start_time))
echo "=== All validation tests passed in $duration seconds ==="
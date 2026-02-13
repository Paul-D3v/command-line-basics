#!/bin/bash
# Command Line Basics - Complete Command Sequence
# This script shows all commands used in the assignment

echo "=== Command Line Basics Assignment ==="
echo ""

# Task 1: Create directory structure
echo "Task 1: Creating Directory Structure"
echo "Command: mkdir -p projects/week1 projects/week2"
mkdir -p projects/week1 projects/week2
echo "✓ Directories created"
echo ""

# Verify structure
echo "Verifying directory structure:"
echo "Command: ls -R projects/"
ls -R projects/
echo ""

# Task 2.1: Create empty file
echo "Task 2.1: Creating hello.txt in week1"
echo "Command: touch projects/week1/hello.txt"
touch projects/week1/hello.txt
echo "✓ File created"
echo ""

# Verify file creation
echo "Verifying file creation:"
echo "Command: ls -la projects/week1/"
ls -la projects/week1/
echo ""

# Task 2.2: Copy and rename
echo "Task 2.2: Copying hello.txt to week2 as hello_copy.txt"
echo "Command: cp projects/week1/hello.txt projects/week2/hello_copy.txt"
cp projects/week1/hello.txt projects/week2/hello_copy.txt
echo "✓ File copied and renamed"
echo ""

# Verify copy
echo "Verifying copy in week2:"
echo "Command: ls -la projects/week2/"
ls -la projects/week2/
echo ""

# Task 2.3: Delete original
echo "Task 2.3: Deleting original hello.txt from week1"
echo "Command: rm projects/week1/hello.txt"
rm projects/week1/hello.txt
echo "✓ Original file deleted"
echo ""

# Verify deletion
echo "Verifying deletion from week1:"
echo "Command: ls -la projects/week1/"
ls -la projects/week1/
echo ""

# Task 3: Create about_me.txt
echo "Task 3: Creating about_me.txt"
echo "Note: Normally created with vim, but here's the content:"
cat > about_me.txt << 'EOF'
My Motivation for Learning Node.js

I am motivated to learn Node.js because it offers a powerful and efficient way to build scalable server-side applications using JavaScript. As someone passionate about full-stack development, mastering Node.js will enable me to use the same language across both frontend and backend, streamlining my development workflow and deepening my understanding of the entire web application stack. The vast ecosystem of npm packages, the non-blocking I/O model, and the ability to handle concurrent connections make Node.js an essential skill for modern web development. I'm excited to leverage Node.js to build real-time applications, RESTful APIs, and microservices that can handle high traffic and provide seamless user experiences.
EOF
echo "✓ about_me.txt created"
echo ""

# Display content
echo "Displaying about_me.txt content:"
echo "Command: cat about_me.txt"
cat about_me.txt
echo ""

echo "=== Final Directory Structure ==="
echo "Command: tree (or ls -R if tree not available)"
ls -R
echo ""

echo "=== Assignment Complete! ==="

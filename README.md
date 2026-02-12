# Command Line Basics Assignment

## Commands Used and Their Outputs

### 1. Create Directory Structure
```bash
mkdir projects
cd projects
mkdir week1 week2
```
Output: Created projects folder with week1 and week2 subfolders.

### 2. Create Empty File
```bash
touch week1/hello.txt
```
Output: Created empty hello.txt file in week1 directory.

### 3. Copy and Rename File
```bash
cp week1/hello.txt week2/hello_copy.txt
```
Output: Copied hello.txt to week2 and renamed it to hello_copy.txt.

### 4. Delete Original File
```bash
rm week1/hello.txt
```
Output: Deleted hello.txt from week1 directory.

### 5. Create and Edit Text File
```bash
vim about_me.txt
```
Output: Created about_me.txt with my motivation for learning Node.js.

## Final Directory Structure
```
projects/
├── week1/
├── week2/
│   └── hello_copy.txt
├── about_me.txt
└── README.md
```
## Screenshots

![Directory Structure](directory-structure.png)
![Commands Executed](commands.png)

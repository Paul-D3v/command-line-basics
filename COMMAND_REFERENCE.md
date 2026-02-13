# Linux Commands Quick Reference Card

## File and Directory Operations

### Creating
| Command | Description | Example |
|---------|-------------|---------|
| `mkdir dirname` | Create directory | `mkdir projects` |
| `mkdir -p path/to/dir` | Create nested directories | `mkdir -p projects/week1` |
| `touch filename` | Create empty file | `touch hello.txt` |

### Viewing
| Command | Description | Example |
|---------|-------------|---------|
| `ls` | List files | `ls` |
| `ls -l` | Long format list | `ls -l` |
| `ls -la` | List all files (including hidden) | `ls -la` |
| `ls -R` | Recursive list | `ls -R` |
| `pwd` | Print working directory | `pwd` |
| `tree` | Tree view of directories | `tree` |

### Navigating
| Command | Description | Example |
|---------|-------------|---------|
| `cd dirname` | Change directory | `cd projects` |
| `cd ..` | Go up one level | `cd ..` |
| `cd ~` | Go to home directory | `cd ~` |
| `cd /` | Go to root directory | `cd /` |
| `cd -` | Go to previous directory | `cd -` |

### Copying and Moving
| Command | Description | Example |
|---------|-------------|---------|
| `cp source dest` | Copy file | `cp file1.txt file2.txt` |
| `cp -r dir1 dir2` | Copy directory | `cp -r week1 week1_backup` |
| `mv source dest` | Move/rename file | `mv old.txt new.txt` |

### Deleting
| Command | Description | Example |
|---------|-------------|---------|
| `rm filename` | Remove file | `rm hello.txt` |
| `rm -r dirname` | Remove directory | `rm -r week1` |
| `rm -rf dirname` | Force remove (dangerous!) | `rm -rf old_projects` |
| `rmdir dirname` | Remove empty directory | `rmdir empty_folder` |

---

## Text Editors

### Vim Commands
| Command | Description |
|---------|-------------|
| `vim filename` | Open file in Vim |
| `i` | Enter insert mode |
| `Esc` | Exit insert mode |
| `:w` | Save file |
| `:q` | Quit |
| `:wq` or `ZZ` | Save and quit |
| `:q!` | Quit without saving |
| `dd` | Delete line |
| `yy` | Copy line |
| `p` | Paste |
| `/search` | Search for text |

### Nano Commands
| Command | Description |
|---------|-------------|
| `nano filename` | Open file in Nano |
| `Ctrl + O` | Save file |
| `Ctrl + X` | Exit |
| `Ctrl + K` | Cut line |
| `Ctrl + U` | Paste |
| `Ctrl + W` | Search |

---

## Viewing File Contents

| Command | Description | Example |
|---------|-------------|---------|
| `cat file` | Display entire file | `cat about_me.txt` |
| `less file` | View file with paging | `less large_file.txt` |
| `more file` | View file page by page | `more readme.txt` |
| `head file` | Show first 10 lines | `head file.txt` |
| `head -n 5 file` | Show first 5 lines | `head -n 5 file.txt` |
| `tail file` | Show last 10 lines | `tail file.txt` |
| `tail -f file` | Follow file updates | `tail -f log.txt` |

---

## File Permissions

| Command | Description | Example |
|---------|-------------|---------|
| `chmod +x file` | Make file executable | `chmod +x script.sh` |
| `chmod 755 file` | Set specific permissions | `chmod 755 file.txt` |
| `chmod -R 755 dir` | Set permissions recursively | `chmod -R 755 projects/` |
| `chown user file` | Change file owner | `chown john file.txt` |

### Permission Numbers
- `4` = Read (r)
- `2` = Write (w)
- `1` = Execute (x)
- `7` = rwx (4+2+1)
- `6` = rw- (4+2)
- `5` = r-x (4+1)

---

## Searching

| Command | Description | Example |
|---------|-------------|---------|
| `find . -name "*.txt"` | Find files by name | `find . -name "*.txt"` |
| `grep "text" file` | Search text in file | `grep "Node.js" about_me.txt` |
| `grep -r "text" dir` | Search recursively | `grep -r "error" logs/` |
| `locate filename` | Quick file search | `locate hello.txt` |

---

## System Information

| Command | Description | Example |
|---------|-------------|---------|
| `whoami` | Current username | `whoami` |
| `hostname` | Computer name | `hostname` |
| `uname -a` | System information | `uname -a` |
| `df -h` | Disk usage | `df -h` |
| `du -sh dir` | Directory size | `du -sh projects/` |
| `free -h` | Memory usage | `free -h` |
| `top` | Process monitor | `top` |

---

## Redirection and Pipes

| Command | Description | Example |
|---------|-------------|---------|
| `cmd > file` | Redirect output to file | `ls > files.txt` |
| `cmd >> file` | Append to file | `echo "text" >> file.txt` |
| `cmd < file` | Input from file | `sort < names.txt` |
| `cmd1 \| cmd2` | Pipe output | `ls \| grep txt` |
| `cmd 2> file` | Redirect errors | `ls error 2> err.log` |

---

## Useful Shortcuts

| Shortcut | Description |
|----------|-------------|
| `Ctrl + C` | Cancel current command |
| `Ctrl + D` | Exit terminal |
| `Ctrl + L` | Clear screen |
| `Ctrl + A` | Move to start of line |
| `Ctrl + E` | Move to end of line |
| `Ctrl + U` | Delete to start of line |
| `Ctrl + K` | Delete to end of line |
| `Ctrl + R` | Search command history |
| `Tab` | Auto-complete |
| `↑ / ↓` | Navigate command history |

---

## Wildcards

| Wildcard | Description | Example |
|----------|-------------|---------|
| `*` | Match any characters | `ls *.txt` |
| `?` | Match single character | `ls file?.txt` |
| `[abc]` | Match a, b, or c | `ls file[123].txt` |
| `[!abc]` | Match not a, b, or c | `ls file[!0-9].txt` |

---

## Common Command Combinations

```bash
# Create directory and navigate into it
mkdir projects && cd projects

# Create file and edit it
touch file.txt && nano file.txt

# List files sorted by modification time
ls -lt

# Count files in directory
ls | wc -l

# Find and delete files
find . -name "*.tmp" -delete

# Create backup of file
cp file.txt file.txt.backup

# View file with line numbers
cat -n file.txt

# Compare two files
diff file1.txt file2.txt
```

---

## Tips and Best Practices

1. **Use Tab completion** - Press Tab to auto-complete commands and filenames
2. **Use up/down arrows** - Navigate through command history
3. **Use `man` command** - Read manual pages: `man ls`
4. **Be careful with `rm -rf`** - This permanently deletes files!
5. **Use `cd -`** - Quickly switch between two directories
6. **Use `history`** - View your command history
7. **Use `clear`** - Clear terminal screen (or Ctrl+L)

---

## Emergency Commands

| Command | Description |
|---------|-------------|
| `Ctrl + C` | Stop running command |
| `Ctrl + Z` | Suspend process |
| `kill PID` | Kill process by ID |
| `killall name` | Kill process by name |
| `jobs` | List background jobs |
| `fg` | Bring job to foreground |
| `bg` | Resume job in background |

---

**Pro Tip:** Always use `ls` to verify before using `rm` to avoid accidental deletions!

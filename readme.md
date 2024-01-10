# Internsctl - Custom Linux Command for Operations

Internsctl is a custom Linux command designed to facilitate various operations on a Linux system. It provides functionalities related to CPU, memory, user management, and file information.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
  - [General Commands](#general-commands)
  - [CPU Commands](#cpu-commands)
  - [Memory Commands](#memory-commands)
  - [User Commands](#user-commands)
  - [File Commands](#file-commands)
- [Options](#options)
- [Examples](#examples)
- [Contributing](#contributing)
- [License](#license)

## Installation

1. Clone the repository to your local machine:

   ```bash
   git clone <repository_url>
   Move into the project directory:
   ```

cd internsctl
Move the internsctl script to a directory in your system's PATH (e.g., /usr/local/bin/):

```bash

sudo mv internsctl /usr/local/bin/
Usage
General Commands
Display help information:
```

```bash

internsctl --help
Display the command version:
```

```bash

internsctl --version
CPU Commands
Get CPU information:
```

```bash

internsctl cpu getinfo
Memory Commands
Get memory information:
```

```bash

internsctl memory getinfo
User Commands
Create a new user:
```

```bash

internsctl user create <username>
List all regular users:
```

```bash

internsctl user list
List users with sudo permissions:
```

```bash

internsctl user list --sudo-only
File Commands
Get information about a file:
```

```bash

internsctl file getinfo <file-name>
Options:
```

--size or -s to print size
--permissions or -p to print file permissions
--owner or -o to print file owner
--last-modified or -m to print last modified time
Options
--help: Display help information.
--version: Display the command version.
Examples
Display help:

```bash

internsctl --help
Get CPU information:
```

```bash

internsctl cpu getinfo
Create a new user:
```

```bash

internsctl user create john_doe
Get information about a file:
```

```bash

internsctl file getinfo --size hello.txt
Contributing
Contributions are welcome! Please follow the Contributing Guidelines for details.
```

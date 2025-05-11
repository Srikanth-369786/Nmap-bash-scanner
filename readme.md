---

#Nmap Bash Scanner

## Description

This script provides an automated way to perform a quick network scan using Nmap, specifically designed for scanning a target IP or domain with essential checks and results stored in a text file. The script performs:

1. **Ping Scan** (`nmap -sn`) to check if the host is online.
2. **Fast Aggressive Scan** (`nmap -T4 -A`) that includes top 1000 ports, service version detection, and OS detection.

The scan results are saved in a structured text file within a `results` folder for easy access.

## Prerequisites

Make sure you have [Nmap](https://nmap.org/) installed on your system. You can install Nmap using the following command:

* On Ubuntu/Debian:

  ```bash
  sudo apt-get install nmap
  ```

* On macOS (using Homebrew):

  ```bash
  brew install nmap
  ```

## Usage

1. **Clone or Download** the script to your local machine.

2. **Navigate to the directory** containing the script and make it executable:

   ```bash
   chmod +x scan.sh
   ```

3. **Run the script**:

   ```bash
   ./scan.sh
   ```

4. The script will prompt you to enter a target IP address or domain name.

   Example:

   ```bash
   Enter the target IP or domain: example.com
   ```

5. The scan will proceed, and results will be saved in a text file located in the `results/` directory. The file is named as `{target}_scan.txt`, where `{target}` is the IP or domain you entered.

   Example output filename: `results/example.com_scan.txt`

## Example Output

```bash
Welcome to Nmap Bash Scanner
Enter the target IP or domain: example.com
Scanning host: example.com
Results will be saved in results/example.com_scan.txt

Running Ping Scan...
Host example.com is up (0.123s latency).
Nmap scan report for example.com (93.184.216.34)
Host is up (0.11s latency).

Running Scan (Top 1000 Ports)...
Starting Nmap 7.91 ( https://nmap.org ) at 2025-05-10 10:00 UTC
Nmap scan report for example.com (93.184.216.34)
Host is up (0.12s latency).
Not shown: 998 closed ports
PORT   STATE SERVICE VERSION
80/tcp open  http    Apache httpd 2.4.18

Scan completed. Check the file: results/example.com_scan.txt
```

## Results Directory

The script will create a directory called `results/` in the same folder where the script is located. If the directory already exists, it will be reused. All scan results will be saved as `.txt` files inside this directory.

## Troubleshooting

* **Nmap Not Installed**: Ensure that Nmap is installed on your system and that it's accessible via the command line.

* **Permission Issues**: If you encounter permission issues, ensure that the script has the necessary permissions by running `chmod +x scan.sh`.

## License

This script is licensed under the MIT License.

---

##Note:
	In case you need screenshots for help,check the screenshots folder

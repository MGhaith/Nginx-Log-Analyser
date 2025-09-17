# Nginx Log Analyzer

A lightweight command-line tool for analyzing Nginx access logs. This tool provides quick insights into server traffic patterns, helping DevOps engineers and system administrators identify potential issues and understand usage patterns.

## 📋 Features

- **Quick Analysis**: Get instant insights from Nginx logs without complex setup.
- **Top IP Addresses**: Identify the most frequent IP addresses.
- **Popular Endpoints**: Discover paths that receive the most traffic.
- **Status Code Distribution**: Monitor response status codes to detect errors.
- **User Agent Analysis**: Find the top 5 user agents from the logs.

## 🚀 Installation

Simply clone the repository and make the script executable:

```bash
git clone https://github.com/MGhaith/Nginx-Log-Analyser.git
cd Nginx-Log-Analyser
```

Make the script executable:
```bash
chmod +x nginx_log_analyzer.sh
```

## 💻 Usage

Run the script with your Nginx access log file as the argument:

```bash
./nginx_log_analyzer.sh /path/to/access.log
```
#### Example

```bash
./nginx_log_analyzer.sh example_nginx_logs
```
> **Note:** in this example, `example_nginx_logs` is a file containing sample Nginx access logs that can be used for testing.

#### Sample Output
```
Top 5 IP addresses with the most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

Top 5 response status codes:
200 - 5740 requests
404 - 937 requests
304 - 621 requests
400 - 260 requests
403 - 23 requests

Top 5 user agents:
DigitalOcean - 4347 requests
Mozilla/5.0 - 513 requests
Mozilla/5.0 - 332 requests
Custom-AsyncHttpClient - 294 requests
Mozilla/5.0 - 282 requests
```

## How It Works

The tool uses standard Unix text processing utilities like `awk`, `sort`, `uniq`, and `grep` to parse and analyze Nginx log files. It extracts key information such as:

1. *Client IP addresses*
2. *Requested paths*
3. *HTTP status codes*
4. *User agent strings*

This information is then processed to identify patterns and present the most frequent occurrences.

## Use Cases

- **Security Monitoring**: Identify potential attacks by spotting unusual IP address activity
- **Content Optimization**: Understand which pages are most popular
- **Error Detection**: Quickly spot HTTP errors that might indicate configuration issues
- **Client Analysis**: See which browsers and devices are accessing a services

## 🛠️ Future Development

- Show how many requests happen each hour or day
- Calculate how fast the server responds to requests
- Create simple charts to visualize the data
- Let users look at logs from specific dates

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/MGhaith/Nginx-Log-Analyser/blob/main/LICENSE) file for details.
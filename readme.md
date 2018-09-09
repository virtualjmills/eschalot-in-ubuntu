# eschalot

Dockerfile for https://github.com/ReclaimYourPrivacy/eschalot based on Ubuntu 18.04 and built from source

## Usage

```bash
docker run --rm -it shamelesscookie/eschalot:latest -vt4 -p cmoore
Verbose, single result, no digits, 4 threads, prefixes 6-6 characters long.
Thread #1 started.
Thread #2 started.
Thread #3 started.
Thread #4 started.
Running, collecting performance data...
Total hashes: 189613433, running time: 10 seconds, hashes per second: 18961343
Total hashes: 571280950, running time: 30 seconds, hashes per second: 19042698
Total hashes: 1328728339, running time: 70 seconds, hashes per second: 18981833
Found a key for cmoore (6) - cmooregx4vv4knsz.onion
----------------------------------------------------------------
cmooregx4vv4knsz.onion
-----BEGIN RSA PRIVATE KEY-----
[...]
```
#!/bin/bash
# Get the version of xz
version=$(xz --version 2>&1 | head -n 1 | awk '{print $NF}')

# Check if the version is 5.6.0 or 5.6.1
if [[ "$version" == "5.6.0" || "$version" == "5.6.1" ]]; then
  echo "Your xz version is affected by CVE-2024-3094"
else
  echo "Your xz version is not affected"
fi

# For further information: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2024-3094
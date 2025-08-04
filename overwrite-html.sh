#!/bin/bash

# Array of pages with their titles and content
declare -A pages=(
  ["index.html"]="SYJ Network - Home|<h1>Welcome to SYJ Network</h1><p>Your decentralized future begins here. Explore our ecosystem and join the revolution.</p>"
  ["about.html"]="About SYJ Network|<h1>About Us</h1><p>Learn about SYJ Network, our mission, and vision for a decentralized world.</p>"
  ["roadmap.html"]="SYJ Network Roadmap|<h1>Roadmap</h1><p>Discover our future plans and upcoming milestones.</p>"
  ["tokenomics.html"]="SYJ Tokenomics|<h1>Tokenomics</h1><p>Explore the token distribution and economic model of SYJ Token.</p>"
  ["mining.html"]="Mining SYJ|<h1>Mining</h1><p>Learn how to mine SYJ tokens and participate in securing the network.</p>"
  ["faq.html"]="FAQ|<h1>Frequently Asked Questions</h1><p>Find answers to the most common questions about SYJ Network.</p>"
  ["education.html"]="Education|<h1>Education</h1><p>Access tutorials, guides, and resources for learning about blockchain and SYJ.</p>"
  ["community.html"]="Community|<h1>Community</h1><p>Join our growing SYJ community and connect with like-minded innovators.</p>"
  ["contact.html"]="Contact|<h1>Contact Us</h1><p>Get in touch with our team for inquiries, support, or collaborations.</p>"
)

# Overwrite each file
for file in "${!pages[@]}"; do
  title="${pages[$file]%%|*}"
  content="${pages[$file]#*|}"
  cat > "$file" <<HTML
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>$title</title>
  <link rel="stylesheet" href="assets/style.css">
</head>
<body>
  <div id="header"></div>

  <main>
    $content
  </main>

  <div id="footer"></div>

  <script src="js/include.js"></script>
</body>
</html>
HTML
  echo "Overwritten: $file"
done

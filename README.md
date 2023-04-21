# catscraper
A shell script which checks Paws.org for updated cat adoption postings and sends an email alert

# How to Use

## Environment

This script is built for use in a Linux environment

## Instructions

1. Clone repository
2. Give the script execution permissions if needed:
```
chmod +x catscraper.sh
```
3. Install Html XML utils in order to have access to the hxnormalize command
```
sudo apt install html-xml-utils 
```
4. Install and configure Mailutils (or another choice of Mail Transfer Agent) in order to run the 'mail' command 
```
sudo apt-get install mailutils
```
5. Create two empty files called ```new_cats.txt``` and ```previous_cats.txt``` in the same directory as the script
6. In the script, replace johndoe@domain.com with the email of the intended recipient
7. Run the script at least once to retrieve the current list of cats from the website
8. Schedule the script (using cron or a similar tool) at desired intervals and watch the cats roll in
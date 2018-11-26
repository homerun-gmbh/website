# uncomment for autobuild

# Copy static site
CWD=`pwd`

# Clone Pages repositor
cd /tmp
git clone https://github.com/ccfz/drthies.git build
cd build # If not using master

bundle exec jekyll contentful

git config --global user.email "casparfz@gmail.com"
git config --global user.name "ccfz"

git add .
git commit -m "Automated Rebuild"
git push origin
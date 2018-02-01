dirname='js_attachment_checker'
mkdir "$dirname"
cd "$dirname"
git init
git config core.sparseCheckout true
git remote add -f origin https://github.com/wyncode/student-resources.git
echo "$dirname/*" > .git/info/sparse-checkout
git checkout master

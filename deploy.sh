DIR=generated_website

# Generate the site
hugo

git add *

git commit -am "Regenerated website"

git push

# Push the contents of DIR to the gh-pages branch
git subtree push --prefix $DIR origin gh-pages
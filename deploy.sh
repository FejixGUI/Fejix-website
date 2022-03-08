DIR=generated_website

# Generate the site
hugo -d $DIR

# Push the contents of DIR to the gh-pages branch
git subtree push --prefix $DIR origin gh-pages
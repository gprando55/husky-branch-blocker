
# Steps

```bash
yarn add -D husky

yarn husky install

yarn husky add .husky/pre-commit "echo hello"
yarn husky add .husky/pre-push "echo hello"
```

### Copy and paste the contents of the scripts from the scripts folder into the files generated in the .husky folder
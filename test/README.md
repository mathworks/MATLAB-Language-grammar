# MATLAB Language Grammar Tests

The tests in this directory leverage:

https://github.com/PanAeon/vscode-tmgrammar-test

# Running the tests

From the root of the repo

```bash
npm install
npm run test
```

will run the tests.

# File structure

Tests in this directory are unit tests for isolated items. The naming convention `tNNDescription.m` refers to a test that fixes issue #NN. The `snap` directory contains snapshot tests which give us broad coverage. When changing the grammar, these tests may fail as they lock down many details of the grammar at the point in time that they were generated. See the [vscode-tmgrammar-test](https://github.com/PanAeon/vscode-tmgrammar-test#snapshot-tests) doc for how to generate and update the `.snap` files.

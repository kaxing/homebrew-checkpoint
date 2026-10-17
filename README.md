# dent — leave a dent.

Local checkpoints so your agent can find its way back.

The source project is now [kaxing/dent](https://github.com/kaxing/dent), and the command is `dent` (formerly `check`). This tap keeps its existing repository name.

```sh
brew install kaxing/checkpoint/dent
```

Dent is also available in the shared toolbox tap:

```sh
brew install kaxing/toolbox/dent
```

Choose one tap. Existing `.checkpoint-files/` data remains usable; no storage migration is needed. Update scripts to call `dent` instead of `check`.

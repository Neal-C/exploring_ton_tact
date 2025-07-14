# exploring Ton's Tact

## Resources

- https://tact-lang.org/
- https://docs.tact-lang.org/
- https://github.com/tact-lang
- https://docs.tact-lang.org/book/learn-tact-in-y-minutes/
- https://tondev.org/func/stdlib
- https://github.com/ton-community/func-js

## Notes

- Tact is a programming language for TON Blockchain that is focused on efficiency and ease of development

- Tact contracts are upgradeable. The Tact compiler allows, but does not encourage, code changes or upgrades after the contract is deployed. Runtime code replacements introduce possible security, stability, and trust issues.

- Tact has Optionals

- TVM, the TON Virtual Machine, is the underlying virtual machine that executes Tact code

- There's Tact assembly, Unlike all other functions, their bodies consist
only of TVM instructions and some other primitives as arguments to instructions.

- Tact has Traits

- The bounced message receiver is a function that handles messages sent from this contract and bounced back to it because of a malformed payload or some issues on the recipient side.

- The tokens on TON Blockchain are commonly called Jettons. The distinction is made because they work differently from ERC-20 tokens or others.

- There are several stages of message processing by a contract. One of which, is the action phase. Actions are executed in sequence, but bear in mind: an exception during the processing of actions will not revert the transaction.

- TON Blockchain is message-based, to communicate with other contracts and to deploy new ones, you need to send messages.

- Tact itself compiles to FunC and maps all its entities directly to various FunC and TL-B types.

### Type system

- `Cell`, `Builder`, `Slice` are low-level primitives of the TVM
- `String` , immutable text strings
- `StringBuilder` : a Helper type that allows you to concatenate strings in a gas-efficient way.

## Instructions

### With Docker

```bash
git clone https://github.com/Neal-C/exploring_ton_tact.git
```

```bash
cd exploring_ton_tact
```

```bash
docker build -t neal-c-tact:latest .
```

```bash
docker run --name neal-c-tact neal-c-tact:latest
```

### With local installation

Requirements: NodeJS >= 22.0.0

```bash
git clone https://github.com/Neal-C/exploring_ton_tact.git
```

```bash
cd exploring_ton_tact
```

```bash
pnpm install
```

```bash
pnpm run build
```

```bash
pnpm test
```


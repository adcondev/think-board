# Git Commit Instructions

When making commits to this repository, please adhere to the following guidelines to ensure clarity and consistency.

## Commit Message Format

Follow Conventional Commits 1.0.0 guidelines when writing commit messages.

It will look like this:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

Where:
- `<type>`: The type of change being made. Common types include:
  - `feat`: A new feature
  - `fix`: A bug fix
  - `docs`: Documentation changes
  - `style`: Code style changes (formatting, missing semi-colons, etc.)
  - `refactor`: Code changes that neither fix a bug nor add a feature
  - `test`: Adding or updating tests
  - `chore`: Changes to the build process or auxiliary tools and libraries
- `[optional scope]`: A scope may be provided to a commit's type, to provide additional contextual information. For example, `feat(parser): add ability to parse arrays`.
- `<description>`: A brief description of the change.
- `[optional body]`: A more detailed explanation of the change, if necessary.
- `[optional footer(s)]`: Any additional information, such as breaking changes or issues closed.
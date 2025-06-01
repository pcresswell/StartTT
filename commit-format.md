# Git Commit Message Format

This document outlines the rules and best practices for writing clear and effective Git commit messages, based on widely accepted conventions.

## The Seven Rules of a Great Git Commit Message

### 1. Separate Subject from Body with a Blank Line
- Use a blank line between the subject and body
- For simple changes, a subject-only commit is fine
- Use a proper text editor for commits with bodies (avoid `-m` flag)

### 2. Limit the Subject Line to 50 Characters
- 50 characters is a soft limit
- Forces concise descriptions
- GitHub UI will truncate longer subjects
- Consider 72 characters as the hard limit

### 3. Capitalize the Subject Line
✅ Good: "Add feature X"
❌ Bad: "add feature X"

### 4. Don't End the Subject Line with a Period
✅ Good: "Update documentation"
❌ Bad: "Update documentation."

### 5. Use the Imperative Mood in the Subject Line
Write your commits as if giving commands:
✅ Good:
- "Fix bug"
- "Add feature"
- "Update docs"

❌ Bad:
- "Fixed bug"
- "Adding feature"
- "Updated docs"

**Tip**: Your subject line should complete this sentence:
"If applied, this commit will _____"

### 6. Wrap the Body at 72 Characters
- Manual line wrapping at 72 characters
- Ensures proper display in various Git tools
- Configure your editor to help with wrapping

### 7. Use the Body to Explain What and Why (Not How)
Good commit messages should answer:
- Why is this change necessary?
- How does it address the issue?
- What effects does the patch have?

Example:
```
Summarize changes in around 50 characters or less

More detailed explanatory text, if necessary. Wrap it to about 72
characters or so. The blank line separating the summary from the
body is critical.

Explain the problem that this commit is solving. Focus on why you
are making this change as opposed to how (the code explains that).
Are there side effects or other unintuitive consequences of this
change? Here's the place to explain them.

Further paragraphs come after blank lines.

- Bullet points are okay, too
- Typically a hyphen or asterisk is used for the bullet

If you use an issue tracker, put references to them at the bottom:

Resolves: #123
See also: #456, #789
```

## Best Practices
1. Write commit messages in present tense
2. Be descriptive but concise
3. Reference issue trackers when applicable
4. Think about the future reader (which might be you!)
5. Take time to write good commit messages - they are permanent documentation

Remember: The primary purpose of commit messages is to help others (and your future self) understand why a change was made.

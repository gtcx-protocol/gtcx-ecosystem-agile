# 📝 GTCX Agile Ecosystem - Commit Guidelines

**Ensuring Frequent, Consistent, and Meaningful Commits**

## 🎯 **Commit Philosophy**

### **Why Commit Often?**
- **Safety**: Protect your work from loss
- **Collaboration**: Enable team members to see your progress
- **History**: Maintain clear version history
- **Debugging**: Easier to identify when issues were introduced
- **Rollback**: Quick recovery from problems

### **Commit Frequency**
- **Minimum**: Every 2-4 hours of active work
- **Recommended**: Every 1-2 hours
- **Maximum**: No more than 1 day between commits
- **Emergency**: Commit immediately after fixing critical issues

## 📋 **Commit Message Format**

### **Standard Format**
```
<type>(<scope>): <description>

[optional body]

[optional footer]
```

### **Type Categories**
- **feat**: New feature or enhancement
- **fix**: Bug fix or issue resolution
- **docs**: Documentation updates
- **style**: Code formatting and style changes
- **refactor**: Code refactoring and restructuring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks and updates
- **ci**: CI/CD and build system changes
- **perf**: Performance improvements
- **security**: Security-related changes

### **Scope Examples**
- **agile-templates**: Changes to agile templates
- **agile-protocols**: Changes to agile protocols
- **ci-backlog**: Changes to continuous improvement backlog
- **roadmaps**: Changes to project roadmaps
- **docs**: General documentation changes

### **Message Examples**
```
feat(agile-templates): add comprehensive PRD template

docs(agile-protocols): update DoR criteria for better clarity

fix(ci-backlog): resolve CI item tracking issue

style(agile-templates): improve markdown formatting consistency

refactor(agile-protocols): restructure DoD validation process
```

## 🚀 **Quick Commit Commands**

### **Basic Commits**
```bash
# Stage all changes and commit
npm run commit

# Stage, commit, and push
npm run commit-push

# Check repository status
npm run status

# View changed files
npm run check-changes
```

### **Interactive Commit Hook**
```bash
# Run interactive commit hook
npm run auto-commit
```

### **Frequent Auto-Commit**
```bash
# Auto-commit every 2 hours (development mode)
npm run frequent-commit
```

## 📅 **Commit Schedule Recommendations**

### **Daily Commit Pattern**
- **Morning**: Commit any overnight changes
- **Mid-morning**: Commit after completing a feature or fix
- **Lunch**: Commit before lunch break
- **Afternoon**: Commit after completing another feature or fix
- **End of day**: Final commit with daily progress summary

### **Sprint Commit Pattern**
- **Sprint Start**: Commit sprint planning and setup
- **Daily**: Commit daily progress and updates
- **Mid-sprint**: Commit mid-sprint review and adjustments
- **Sprint End**: Commit sprint completion and retrospective

## 🔄 **Git Workflow for Frequent Commits**

### **Feature Branch Workflow**
```bash
# Create feature branch
git checkout -b feature/agile-template-enhancement

# Make changes and commit frequently
git add .
git commit -m "feat(agile-templates): enhance user story template"

# Continue working and committing
git add .
git commit -m "docs(agile-templates): add acceptance criteria examples"

# Push to remote for backup
git push origin feature/agile-template-enhancement

# Final commit before merge
git commit -m "feat(agile-templates): complete template enhancement"

# Merge to main branch
git checkout main
git merge feature/agile-template-enhancement
git push origin main
```

### **Main Branch Protection**
- **Never commit directly to main** during active development
- **Use feature branches** for all development work
- **Pull request reviews** before merging to main
- **Automated testing** on all commits

## ✅ **Commit Quality Checklist**

### **Before Committing**
- [ ] **Code Review**: Code has been reviewed (if applicable)
- [ ] **Tests Pass**: All tests are passing
- [ ] **Linting**: Code passes linting checks
- [ ] **Documentation**: Documentation is updated
- [ ] **No Sensitive Data**: No passwords, keys, or sensitive data

### **Commit Message Quality**
- [ ] **Clear Description**: Message clearly describes the change
- [ ] **Proper Type**: Correct type category selected
- [ ] **Appropriate Scope**: Scope accurately reflects the change
- [ ] **Conciseness**: Message is concise but descriptive
- [ ] **Imperative Mood**: Uses imperative mood ("add" not "added")

### **After Committing**
- [ ] **Push to Remote**: Push changes to remote repository
- [ ] **Verify Push**: Confirm changes are visible on GitHub
- [ ] **Update CI**: Trigger any necessary CI/CD processes
- [ ] **Team Notification**: Notify team of significant changes

## 🚨 **Common Commit Mistakes to Avoid**

### **Don't Do This**
- ❌ **Large Commits**: Committing many unrelated changes together
- ❌ **Vague Messages**: "Fixed stuff" or "Updated things"
- ❌ **Incomplete Work**: Committing broken or incomplete features
- ❌ **Skipping Tests**: Committing without running tests
- ❌ **Ignoring Linting**: Committing code that fails linting

### **Do This Instead**
- ✅ **Small, Focused Commits**: One logical change per commit
- ✅ **Descriptive Messages**: Clear description of what changed
- ✅ **Complete Features**: Only commit working, complete features
- ✅ **Test First**: Run tests before committing
- ✅ **Clean Code**: Ensure code passes all quality checks

## 🔧 **Automated Commit Tools**

### **GitHub Actions**
- **Auto-commit workflow**: Automatically commits changes every 6 hours
- **Quality checks**: Runs linting and validation on commits
- **Automated testing**: Tests all committed code

### **Pre-commit Hooks**
- **Code formatting**: Automatically formats code before commit
- **Linting checks**: Ensures code quality standards
- **Documentation validation**: Checks markdown and documentation

### **IDE Integration**
- **VS Code**: Git integration and commit tools
- **IntelliJ**: Git integration and commit tools
- **GitKraken**: Visual git client with commit tools

## 📊 **Commit Metrics & Tracking**

### **Team Commit Metrics**
- **Commit Frequency**: Average commits per developer per day
- **Commit Size**: Average lines changed per commit
- **Commit Quality**: Percentage of commits with proper messages
- **Review Coverage**: Percentage of commits reviewed

### **Individual Commit Metrics**
- **Personal Frequency**: Your commits per day/week
- **Message Quality**: Your commit message adherence
- **Branch Usage**: Your feature branch usage
- **Collaboration**: Your pull request participation

## 🎉 **Commit Best Practices Summary**

### **Frequency**
- **Commit every 1-2 hours** during active development
- **Never go more than 1 day** without committing
- **Commit immediately** after fixing critical issues

### **Quality**
- **One logical change** per commit
- **Clear, descriptive messages** following the format
- **Complete, working features** only
- **Tests passing** before commit

### **Workflow**
- **Use feature branches** for development
- **Pull request reviews** before merging
- **Push to remote** after every commit
- **Regular backups** through remote pushes

---

**GTCX Commit Guidelines** - Building quality through frequent, consistent commits! 📝✨

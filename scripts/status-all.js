#!/usr/bin/env node
const { execSync } = require('node:child_process');
const { readFileSync } = require('node:fs');
const { join } = require('node:path');

const root = process.cwd();
const manifestPath = join(root, 'scripts', 'workspace.manifest.json');
const manifest = JSON.parse(readFileSync(manifestPath, 'utf8'));
const repos = manifest.repos || [];

function sh(cmd, cwd) {
  try { return execSync(cmd, { cwd, stdio: 'pipe' }).toString().trim(); } catch { return ''; }
}

function status(repo) {
  const cwd = join(root, repo);
  const sb = sh('git status -sb', cwd);
  const branchLine = (sb.split('\n')[0] || '').replace(/^## /, '') || 'unknown';
  const aheadMatch = branchLine.match(/\[(ahead .*?)\]/);
  const ahead = aheadMatch ? ` ${aheadMatch[0]}` : '';
  const shortstat = sh('git diff --shortstat', cwd) || 'clean';
  const untracked = sh('git ls-files --others --exclude-standard | wc -l', cwd) || '0';
  return { repo, branch: branchLine, ahead, shortstat, untracked };
}

console.log(`[workspace] ${manifest.name}`);
for (const r of repos) {
  const s = status(r);
  console.log(`- ${s.repo}: ${s.branch}${s.ahead} | diff: ${s.shortstat} | untracked: ${s.untracked}`);
}

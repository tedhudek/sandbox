---
title: "Git worktrees demystified"
date: 2019-02-07
---

# Git worktrees demystified

I've been using Git happily for years, but just discovered an incredible feature.  When I skimmed a few blog entries, I didn't get it right away; in fact it wasn't until I tried it that it made sense.  In the hope of sparing you that ramp up, I decided to write up a post that hopefully will help you *get* it right off the bat.  Ready?  Here we go.

## The value prop

Let's say you wanted to have a second clone of the same repo on your machine. That way, each clone could have a different branch checked out, and you could use any file diff tool to compare files.  

This works fine, but it's a heavyweight solution.  You need disk space for two full clones. You can share commits between clones, but to do so you have to push up to the official repo and then pull down.

You can get a similar but even better result with a single clone by creating a worktree.

When you create a worktree from an existing clone, you specify a directory (must be outside of the existing clone) and Git will set you up with a configuration like I just described. You'll be able to have a different branch checked out in the worktree than in the clone itself, but the best part is when you commit.  Any commits you make in the worktree are visible in the clone -- immediately -- and vice-versa.  You could even edit files from the clone and files from the worktree at the same time!  This is a great alternative to stashing your changes.

All while using less disk space than two clones would because Git intelligently manages when it actually duplicates on your hard drive and when it just uses symbolic linking.  But you don't have to worry about any of that, it just happens under the hood.

This is awesome, you're saying, what's the catch?  Really the only minor caveat of this amazing feature is that you can't have the same branch checked out simultaneously in a worktree and its associated clone, because then they could drift apart.  Oh, and it doesn't play well with submodules.

Note that you're not limited to a single worktree; in fact, you can create as many as you like.

To help it all sink in, here's a sample walkthrough:

```cmd
# create a worktree

C:\repo\sandbox [master ≡]> git worktree add -b new-working-branch ../sandbox-worktree-dir master
Preparing worktree (new branch 'new-working-branch')
HEAD is now at 97c8a22 draft
C:\repo\sandbox [master ≡]> cd ..\sandbox-worktree-dir\

# do some work

C:\repo\sandbox-worktree-dir [new-working-branch +0 ~1 -0 !]> git commit -am 'test'
[new-working-branch e55177d] test
 1 file changed, 1 insertion(+), 1 deletion(-)

# switch back to our clone and verify that we can see the commit we just made

C:\repo\sandbox-worktree-dir [new-working-branch]> cd ..\sandbox\
C:\repo\sandbox [master ≡]> git log -1 --oneline new-working-branch
e55177d (new-working-branch) test

# list our worktree

C:\repo\sandbox [master ≡]> git worktree list
C:/repo/sandbox               673a024 [master]
C:/repo/sandbox-worktree-dir  e55177d [new-working-branch]

# we're done, so remove the worktree

C:\repo\sandbox [master ≡]> git worktree remove ..\sandbox-worktree-dir\

# verify it's gone

C:\repo\sandbox [master ≡]> git worktree list
C:/repo/sandbox  673a024 [master]

C:\repo\sandbox [master ≡]> cd ..\sandbox-worktree-dir
cd : Cannot find path 'C:\repo\sandbox-worktree-dir' because it does not exist.

```

Isn't Git magic?

## Resources

[Git worktree documentation page](https://git-scm.com/docs/git-worktree)

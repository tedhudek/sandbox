---
title: "xxx"
date: 2019-02-07
---

# Git worktrees demystified

I've been using Git happily for years, but just discovered an incredible feature recently.  A lot of blog entries I found on it left me slightly perplexed, and it wasn't until I tried it that it made sense.  In the hope of sparing you that ramp-up, I decided to write up a post that (hopefully) will help you *get* it right off the bat.  Ready?  Let's go.

## How it works

Let's say you wanted to have an extra clone of the same repo on your machine. That way, each clone could have a different branch checked out, and you could use any file diff tool to compare files.  

This works fine, but it's a heavyweight solution.  You need disk space for two full clones. You can share commits between your two clones, but to do so you have to push up to the official repo and then pull down.

What if there was a better way to achieve the same result?  Enter the magic of git worktrees.

You can get a similar but even better result with a single clone by creating a worktree.  When you create a worktree of an existing clone, you specify a directory (must be outside of the existing clone) and Git will set you up with a configuration like the above. You'll be able to have a different branch checked out in the worktree than in the clone itself, but the best part is when you commit.  Any commits you make in the worktree are visible in the clone, and vice-versa.  And you use less disk space because Git intelligently manages what it actually duplicates on your hard drive vs. just using symbolic linking.  But you don't have to worry about any of that, it just happens under the hood.

You could even edit files from the clone and files from the worktree at the same time!  This is a great alternative to stashing your changes.

This is awesome, you're saying, what's the catch?  Really the only minor caveat of this amazing feature is that you can't have the same branch checked out simultaneously in a worktree and its associated clone, because then they could drift apart.

You can create more than one worktree, in fact, create as many as you like.

Here's a sample walkthrough:

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
```


## Resources

[doc](xxx)

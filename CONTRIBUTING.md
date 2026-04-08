
### **Contents**

Instructions required to clone the M365-CCSE repository from GitHub.  

- [⌛ Prerequisites & Reminders](#-prerequisites--reminders)
- [🕧 Quick Reference](#-quick-reference)
- [📂 1. Create a working space](#-1-create-a-working-space)
- [🐑 2. Clone the M365-CCSE repository](#-2-clone-the-m365-ccse-repository)
- [🌿 3. Create a branch](#-3-create-a-branch)
- [🔀 4. Switch to Your Branch](#-4-switch-to-your-branch)
- [👩🏻‍💻 5. Develop your code](#-5-develop-your-code)
- [📥 6. Stage Your Changes](#-6-stage-your-changes)
- [💬 7. Commit Changes](#-7-commit-changes)
- [⬆️ 8. Push changes](#️-8-push-changes)
- [🔁 9. Create a Pull Request](#-9-create-a-pull-request)
- [🔄 10. Switch Back to master](#-10-switch-back-to-master)
- [🔄 11. Update Local master](#-11-update-local-master)
- [🗑️ 12. Delete Your Local Feature Branch](#️-12-delete-your-local-feature-branch)
- [🙋🏻‍♂️ FAQs](#️-12-delete-your-local-feature-branch)

<!---------------------------------------------------------------------------------------------------------------------->

## ⌛ Prerequisites & Reminders

- VSCode: 
Local code development should be done using VSCode
- Authentication [Setup Secure Shell (SSH) Keys or Personal Access Token (PAT)](https://nbs-enterprise.atlassian.net/wiki/x/y4SRM)
- Do not use branch names for files/folders names. Follow the below structure.
- Use any valid Jira ticket for the feature work. 
- Don't store secrets. Automations will flag these.  
- Don't create your clone in a OneDrive folder. 

<!---------------------------------------------------------------------------------------------------------------------->

## 🕧 Quick Reference

When you need a quick reminder of the git workflow:

```
# Clone the repository
git clone git@github.com:nationwide-building-society/M365-CCSE        

# Make sure master is up to date
git pull origin master

# Create a new feature branch
git branch tfccc-1234-newfeaturedescription                           

# Switch to the new branch
git checkout tfccc-1234-newfeaturedescription                         

# Develop your code...                                                                      

# Stage all changes
git add .                                                             

# Commit with a message
git commit -m "your comments here"                                    

# Push branch to GitHub
git push --set-upstream origin tfccc-1234-newfeaturedescription       

# Raise a PR and get it approved                                                                      

# Switch back to master
git checkout master                                                   

# Update master with latest changes
git pull                                                              

# Delete the local feature branch if it's still local (GitHub should have deleted it)
git branch -D tfccc-1234-newfeaturedescription                        
```

<!---------------------------------------------------------------------------------------------------------------------->

## 📂 1. Create a working space

You need a space in your file system to work on the feature you are about to clone. 

Open VSCode > Terminal > New Terminal > Run the following: 

```
New-Item -ItemType Directory -Path "$env:USERPROFILE\Git" -Force | Out-Null ; Set-Location "$env:USERPROFILE\Git"
```

ℹ️ Do not create your clone/repository in a currently syncing SharePoint or OneDrive folder. File locks can cause issues with the git process. 

<!---------------------------------------------------------------------------------------------------------------------->

## 🐑 2. Clone the M365-CCSE repository

This creates a copy of from the master locally, so your changes can be made off the clone. 

```
git clone git@github.com:nationwide-building-society/M365-CCSE
```

Sample output: 

```
PS C:\Users\P84567\Git> git clone git@github.com:nationwide-building-society/M365-CCSE
Cloning into 'M365-CCSE'...
Enter passphrase for key '/c/Users/P84567/.ssh/id_ed25519': 
remote: Enumerating objects: 435, done.
remote: Counting objects: 100% (17/17), done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 435 (delta 4), reused 4 (delta 0), pack-reused 418 (from 1)
Receiving objects: 100% (435/435), 63.43 MiB | 2.76 MiB/s, done.
Resolving deltas: 100% (90/90), done.
```

<!---------------------------------------------------------------------------------------------------------------------->

## 🌿 3. Create a branch

Ensure you change folders in VSCode e.g. you need to be in the master repository folder you have just cloned:  

File > Open Folder > `C:\Users\XXXXX\Git\M365-CCSE` > New Terminal > Run: 

```
git branch tfccc-1234-newfeaturedescription
```

If you make a typo, you can rename the branch with if you haven't pushed it yet: 

```
git branch -m new-branch-name
```

<!---------------------------------------------------------------------------------------------------------------------->

## 🔀 4. Switch to Your Branch

Switch branch from `master` to your feature branch: 

```
  git checkout tfccc-1234-newfeaturedescription
```

<!---------------------------------------------------------------------------------------------------------------------->

## 👩🏻‍💻 5. Develop your code

All your changes will be recorded locally, before they are ready to send to GitHub. 

<!---------------------------------------------------------------------------------------------------------------------->

## 📥 6. Stage Your Changes

Stage your changes: 

```
git add .
```

<!---------------------------------------------------------------------------------------------------------------------->

## 💬 7. Commit Changes

Commit your changes with comments:

```
git commit -m "your comments here"
```

<!---------------------------------------------------------------------------------------------------------------------->

## ⬆️ 8. Push changes 

Push your new temp branch to GitHub: 

```
git push --set-upstream origin tfccc-1234-newfeaturedescription
```

<!---------------------------------------------------------------------------------------------------------------------->

## 🔁 9. Create a Pull Request

Create a [pull request](https://github.com/nationwide-building-society/M365-CCSE/compare) in GitHub.  

You must assign at least one approver to merge your changes with the master repository. Click the ⚙️ and assign one of the approvers. These will typically be ISL's/E3's. 

![Assign Reviewer](_Images/cont_assign_reviewer.png)

<!---------------------------------------------------------------------------------------------------------------------->

##  🔄 10. Switch Back to master

Checkout to your local master branch: 

```
git checkout master
```

<!---------------------------------------------------------------------------------------------------------------------->

## 🔄 11. Update Local master

Update your local master branch: 

```
git pull
```

<!---------------------------------------------------------------------------------------------------------------------->

## 🗑️ 12. Delete Your Local Feature Branch

Delete the local branch you created. This removes your local working branch directory. You may also delay the master branch if you no longer need it. 

```
git branch -D tfccc-1234-newfeaturedescription
```

Use `git branch` if you need to list your branches. 

<!---------------------------------------------------------------------------------------------------------------------->

# 🙋🏻‍♂️ FAQs

### How do I remove deleted files from a Pull Request? 

If you have deleted files and need them removed from the Pull Request, you need to send the staged deletions to Git and then commit the changes.  

```
# Stage deletions
git add -u

# Commit and push
git commit -m "Removed logs/CSV files"
git push
```

You can now continue with the Puull Request. 

<!---------------->

### I've made more changes since my PR

If you have made additional changes that need adding to the Pull Request:  

```
# See what changed
git status

# Stage changes
git add .

# Commit
git commit -m "Describe the new changes"

# Push to the same branch that the PR is based on
git push
```

You can now continue with the Puull Request. 

<!---------------->
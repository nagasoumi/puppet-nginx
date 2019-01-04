<<<<<<< HEAD
# nginx

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with nginx](#setup)
    * [What nginx affects](#what-nginx-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with nginx](#beginning-with-nginx)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Start with a one- or two-sentence summary of what the module does and/or what
problem it solves. This is your 30-second elevator pitch for your module.
Consider including OS/Puppet version it works with.

You can give more descriptive information in a second paragraph. This paragraph
should answer the questions: "What does this module *do*?" and "Why would I use
it?" If your module has a range of functionality (installation, configuration,
management, etc.), this is the time to mention it.

## Setup

### What nginx affects **OPTIONAL**

If it's obvious what your module touches, you can skip this section. For
example, folks can probably figure out that your mysql_instance module affects
their MySQL instances.

If there's more that they should know about, though, this is the place to mention:

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

If your most recent release breaks compatibility or requires particular steps
for upgrading, you might want to include an additional "Upgrading" section
here.

### Beginning with nginx

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most
basic use of the module.

## Usage

This section is where you describe how to customize, configure, and do the
fancy stuff with your module here. It's especially helpful if you include usage
examples and code samples for doing things with your module.

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most users don't read it per
se.

## Limitations

This is where you list OS compatibility, version compatibility, etc. If there
are Known Issues, you might want to include them under their own heading here.

## Development

Since your module is awesome, other users will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You can also add any additional sections you feel
are necessary or important to include here. Please use the `## ` header.
=======
Table of Contents
=================

  * [Where Did All The Previous Code Go?](#where-did-all-the-previous-code-go)
  * [What You Get From This control\-repo](#what-you-get-from-this-control-repo)
    * [Copy This Repo Into Your Own Git Server](#copy-this-repo-into-your-own-git-server)
      * [GitLab](#gitlab)
      * [Stash](#stash)
      * [GitHub](#github)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc.go)

# Where Did All The Previous Code Go?

Initially, the control-repo project began as a 'starter' template for anyone who wanted to get started with r10k. As time passed, and Code Manager was integrated into Puppet Enterprise, the scope of this project grew to include opinionated Puppet profiles to set up many Puppet Enterprise components. As the code increased, so did the complexity of the control-repo project. To reduce that complexity, as well as continuing to meet the needs of individuals who would like a more minimal template, this repository was stripped of anything other than the bare minimum files necessary to get started with a functioning
control-repo.

All of the code that was previously in this repository still exists in separate repositories under the [Puppet Ramp Up Program namespace within Github](https://github.com/Puppet-RampUpProgram) and can be re-connected to an existing control-repo if that is required by adding the modules to the Puppetfile. Alternatively, if that previously opinionated control-repo is desired, [it still exists on Github under the Puppet Ramp Up Program namespace.](https://github.com/Puppet-RampUpProgram/control-repo) This control-repo project will remain a template for anyone who would like a minimal 'starter' template.

# What You Get From This control-repo

This repository is a template control-repo that can be used with r10k or Puppet Enterprise Code Manager.

The major points are:
 - An environment.conf that correctly implements:
   - A site directory for roles, profiles, and any custom modules for your organization.
   - A config_version script.
 - Provided config_version scripts to output the commit of code that your agent just applied.
 - Basic example of roles/profiles code.
 - Example hieradata directory with pre-created common.yaml and nodes directory.
   - These match the default hierarchy that ships with PE.

## Copy This Repo Into Your Own Git Server

### GitLab

1. Install GitLab.
 - https://about.gitlab.com/downloads/

2. After GitLab is installed you may sign if with the `root` user and password `5iveL!fe`.

3. Make a user for yourself.

4. Make an SSH key to link with your user. You’ll want to do this on the machine you intend to edit code from (most likely not your Puppet master, but your local workstation or laptop).
 - http://doc.gitlab.com/ce/ssh/README.html
 - https://help.github.com/articles/generating-ssh-keys/

5. Create a group called `puppet` (this is case sensitive).
 - http://doc.gitlab.com/ce/workflow/groups.html

6. Add your user to the `puppet` group as well.

7. Create a project called `control-repo`, and set the Namespace to be the `puppet` group.

8. Clone this control repository to your laptop/workstation:
 - `git clone <repository url>`
 - `cd control-repo`

9. Remove this repository as the origin remote:
 - `git remote remove origin`

10. Add your internal repository as the origin remote:
 - `git remote add origin <url of your gitlab repository>`

11. Push the production branch of the repository from your machine up to your git server
 - `git push origin production`

### Stash

Coming soon!

### GitHub

1. Prepare your local git client to authenticate with GitHub.com or a local GitHub Enterprise instance.
  - https://help.github.com/articles/generating-ssh-keys/
  - https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/

2. Create a repository called `control-repo` in your user account or organization.  Ensure that "Initialize this repository with a README" is not selected.
  - https://help.github.com/articles/creating-a-new-repository/

3. Make a note of your repository URL (HTTPS or SSH, depending on your security configuration).

4. Clone this control repository to your laptop/workstation:
  - `git clone <repository url>`
  - `cd control-repo`

5. Remove this repository as the origin remote:
  - `git remote remove origin`

6. Add your internal repository as the origin remote:
  - `git remote add origin <url of your github repository>`

7. Push the production branch of the repository from your machine up to your git server
  - `git push origin production`
>>>>>>> 0b731848e5053863cfd195b5c38463784bb73a71

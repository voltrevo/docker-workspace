# docker-workspace

Docker solution for isolated ubuntu developer workspaces with lots of goodies.

## Install

### Windows

1. Install [Chocolatey](https://chocolatey.org/)
2. `choco install cmder`
3. `choco install docker-for-windows`
4. Install [git for windows](https://gitforwindows.org/)
5. `git clone https://github.com/voltrevo/docker-workspace.git`
6. `cd docker-workspace`
7. `docker build . -t docker-workspace`
8. Open cmder
9. Pin cmder on taskbar (right click cmder icon down the bottom -> pin to taskbar)
10. Right click cmder *titlebar* -> Settings...
11. Startup -> Tasks -> Click `+`
12. Call it docker-workspace and copy `runcmd` (from this repo) into the commands box
13. Click `Up` until `{docker-workspace}` is on top
14. Check 'Default task for new console', save settings
15. Startup -> Choose `{docker-workspace}` under 'Specified named task', save settings
16. Close & reopen cmder
17. Follow the github guide for [setting up git](https://help.github.com/articles/set-up-git/)
  - Skip installing the latest git, you already have it
  - Choose the SSH option and follow the guide through setting up ssh keys

## Usage

Each time you start a new terminal the environment is mostly fresh and the changes you make are volatile ([more about docker](https://www.youtube.com/watch?v=Q5POuMHxW-0)). Feel free to experiment installing things but know that they won't persist - that's the role of this repo - to standardize all that. What does persist is the `~/workspaces` directory, and is shared between your instances. This sharing is for convenience, but I recommend keeping them separate.

If you want more software, please [fork this repo](https://help.github.com/articles/fork-a-repo/), add things you need, and re-run the relevant parts of the installation guide. Please consider submitting a [pull request](https://help.github.com/articles/about-pull-requests/) to share your enhancements with the official version.

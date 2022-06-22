# Connecting Jenkins to AWS EC2

## Create a new Item/build (eng114-lee-Jenkins-aws)
- Give new Item an identifiable name like image below:

![name new item](./CJTE_Images/uniques_name.jpg)

- Enter a description to explain the items purpose.

![item description](./CJTE_Images/description.jpg)

- Office 365 Connector, tick `Restrict where this project can be run

![Office 365 connector](./CJTE_Images/Office%20356%20connector.jpg)

- Source code management, enter URL from GitHub, pick Credentals, enter github branch.

![source code management](./CJTE_Images/SCM.jpg)

- Build Triggers, tick `Build after other projects are built`, enter CI Item, tick `Trigger only if buid is stable`

![build Tigger](./CJTE_Images/Build%20Trigger.jpg)

- Build Environment, tick `SSH Agent`, add `Credentials`

![Build Environment](./CJTE_Images/Build%20Env.jpg)

- Build, Enter commands in shell execute to be executed in AWS EC2

![Build commands](./CJTE_Images/Build%20Commands.jpg)

- Press `Apply` then `Save`

## In previous folder (lee-CI)

- Add name of new Item/build (eng114-lee-Jenkins-aws), tick `Trigger only if build is stable`

![Post build actions in lee-CI](./CJTE_Images/Post-build-actions%20in%20lee-CI.jpg)

### Ensure to check all file paths properly and IP addresses match before pushing to github
still
hoping
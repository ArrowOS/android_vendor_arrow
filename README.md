<img src="https://github.com/ArrowOS/getting_started/blob/master/misc/logo.png?raw=true">

# ArrowOS

 Getting Started
---------------
To get started with the ArrowOS sources, you'll need to get
familiar with:

 [Git and Repo](https://source.android.com/setup/build/downloading)
 
 [Establishing a Build Environment](https://source.android.com/setup/build/initializing)

To initialize your local repository, use command:

```bash
    repo init -u https://github.com/ArrowOS/android_manifest.git -b arrow-9.x
```

Then sync up:

```bash
    repo sync  -f --force-sync --no-clone-bundle -jX
```
Where X is the thread your CPU can handle.

For building instructions, please check :

[ How to Compile ArrowOS from source for your Android Device](https://blog.arrowos.net/posts/compilation-guide)

To apply for maintainership, please check :

[Apply for Official Maintainership](https://blog.arrowos.net/posts/apply-for-maintainership)


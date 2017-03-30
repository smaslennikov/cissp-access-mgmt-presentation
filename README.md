# cissp-access-mgmt-presentation [![Build Status](https://travis-ci.org/smaslennikov/cissp-access-mgmt-presentation.svg?branch=master)](https://travis-ci.org/smaslennikov/cissp-access-mgmt-presentation)

## Contributing

1. Ensure the dependencies are installed:
    * on ubuntu:
```bash
sudo apt-get install ruby-dev
gem uninstall redcarpet
gem install redcarpet -v 3.1.2
gem install mdpress
```
    * on OS X: `gem install mdpress` may suffice
    * ensure you can run `mdpress -h`
2. Pull down the git repo: `git pull git@github.com:smaslennikov/cissp-access-mgmt-presentation.git`
2. Write up an .md file
    * examples can be found [here](https://github.com/egonSchiele/mdpress)
3. Build your .md file
    * `make all` can be used to build all .md files in the repo directory
    * `make open_all` can be used to build all .md files **and** open the resulting presentations in your default browser
4. Push your progress to git
    1. `git add .` in the repo directory
    2. `git commit -m "Your message here"`, replacing the message with a commit message of your choice
    3. `git push origin master`
5. Await for Travis results! Travis progress can be viewed [here](https://travis-ci.org/smaslennikov/cissp-access-mgmt-presentation)
6. You can view your newly made presentation both locally and through github pages:
    1. Locally by pointing your browser to index.html in the build directory
    2. On github pages once you push to github (if you forgot to build with `make all` first, this won't work) [here](smaslennikov.com/cissp-access-mgmt-presentation/)

## Thanks
To [this](https://github.com/egonSchiele/mdpress) many many thanks

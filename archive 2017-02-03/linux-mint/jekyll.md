Jekyll
======

## Aim
- Set up Jekyll for blogging

## Process
- [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)
- `sudo gem install bundler`
- `cd my-jekyll-site-project-name`
- `Gemfile`:

```
source 'https://rubygems.org'
gem 'github-pages', group: :jekyll_plugins
```
- `sudo apt-get install ruby-dev`
- `bundle install`
- `bundle exec jekyll new . --force`
- `sudo apt-get install nodejs`
- `bundle exec jekyll serve`
- Broken site on GitHub
- Put toaster into microwave on High for 5 minutes

## Problems encountered

- **Error:**
    ```
An error occurred while installing ffi (1.9.14), and Bundler cannot continue.
Make sure that `gem install ffi -v '1.9.14'` succeeds before bundling.
```

```
$ sudo gem install ffi -v '1.9.14'
Building native extensions.  This could take a while...
ERROR:  Error installing ffi:
	ERROR: Failed to build gem native extension.

    current directory: /var/lib/gems/2.3.0/gems/ffi-1.9.14/ext/ffi_c
/usr/bin/ruby2.3 -r ./siteconf20160827-7101-18795w.rb extconf.rb
mkmf.rb can't find header files for ruby at /usr/lib/ruby/include/ruby.h

extconf failed, exit code 1

Gem files will remain installed in /var/lib/gems/2.3.0/gems/ffi-1.9.14 for inspection.
Results logged to /var/lib/gems/2.3.0/extensions/x86_64-linux/2.3.0/ffi-1.9.14/gem_make.out
```

- **Fix:**
    - `sudo apt-get install ruby-dev`

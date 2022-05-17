# 3dmousebrain

This repository contains data, files, and instructions for rendering `https://www.3dmousebrain.com/`. The site is hosted on an AWS server. Site was originally developed by Vatsal Mehra but has been modified and is currently maintained by James Choi (me). Contact me for the AWS server private key for SSH access. 

## Project setup

Set `home` to `3dmousebrain` with the following structure:

```
.
├── README.md
├── babel.config.js
├── dist
├── node_modules
├── package-lock.json
├── package.json
├── public
└── src
```

* `src/` : contains files used during compile for production. These files are not directly uploaded to the AWS server. `src` contains further directories but the ones JSC has edited to modify the site are the following:
  * `components/` : directory containing `.vue` files used for compile. 
    * `BrainMulViz.vue` : `.vue` file for displaying brain image options under **Brain** tab.
    * `GetMarkdownFile.vue` : `.vue` file for retrieving `.md` files. You will probably not need to touch this.
    * `Header.vue` : `.vue` file for generating various tabs on homepage. You can add additional static, `.md`-based tabs by adding `<b-nav-item>` items (e.g. see line 5).
    * `Home.vue` : `.vue` the landing page design.
  * `assets/` : unclear what these files are for.
* `public/` : files that are referenced via absolute paths by the `.vue` files in `src/components/`. These assets will simply be copied and not go through webpack i.e. they are unmodified and copied directly into the compiled `dist/` directory.
  * `datasets/` : contains cell count quantification `.csv`'s that are displayed under **Brain** tab e.g. *Plot Cell Counts Across Regions*. JSC has revised raw cell counts by directly modifying the `.csv`'s.
  * `ContactMarkdown.md` : `.md` file used to render the **Contact** tab contents. Copied unmodified into `dist/`.
  * `SoftwareMarkdown.md` : `.md` file used to render the **Software** tab contents. Copied unmodified into `dist/`.
  

Run the following to install dependencies according to `package-lock.json`.

```
npm install
```

### Compiles and hot-reloads for development

Run this to spin-up a development server locally for debugging and editing purposes. 

```
npm run serve
```

### Compiles and minifies for production

Run this to compile files for production. Files are compiled into `dist` directory in home.

```
npm run build
```

## Deploying to AWS

Dry-run `rsync` before you actually push changes:

```
rsync -nrv dist/ blackmoreserver:/var/www/3dmousebrain.com
```

The real deal:
```
rsync -rv dist/ blackmoreserver:/var/www/3dmousebrain.com
```

This will copy files in `dist/` directory into `3dmousebrain.com/`. A `dist/` directory should not appear in `3dmousebrain.com/`. 

### Run your tests

JSC: I have not tried this.

```
npm run test
```

### Lints and fixes files

JSC: I have not tried this.

```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

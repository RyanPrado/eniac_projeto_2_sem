# [1.4.0](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.3.0...v1.4.0) (2025-12-01)


### Bug Fixes

* add new layer of envs verification ([2564c4e](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/2564c4e18144734ceeec1d7f523c8bf8d63a012a))
* changed directory name of config to libs where stay libs configs & move context to package root. ([05caf91](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/05caf918479048c8cc174e30bf01a84815d66295))
* changed Flyway version to one compatible with Java 11 & add and configure resources directory. ([cb96d3f](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/cb96d3fb1ea6c94b262ce848203e09799c4582af))
* remove unnecessary empty lines and ensure DB_URL is correctly formatted ([a8b933f](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/a8b933f6cc23ed5a34573bcad82a0322beb617a8))
* removed database connection from HomeController ([ca0d56b](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/ca0d56b4a14b59385c9b05259cc53c64c3153d45))
* Update pom.xml ([26d4e9f](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/26d4e9fe553f20901aa0996fa8d5ece0bfc8089f))


### Features

* add flyway cli ([888dce1](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/888dce1e98ece989f9d44e1dcdc7b540202095ae))
* Add Flyway to make DB migrations versionament & create MigrationConfig to handle with all migrations config ([79819ab](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/79819ab87c8023eebb209ba8777d354bc8e73b40))
* add MigrationConfig to Context for execute migrations ([d6be6b5](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/d6be6b560a19c6b794d2c871d9e528576b24cb70))
* Create DatabaseConnetion & insert inside of the app context ([32863ad](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/32863ad292616b002ad5e3f603b6fb7cb3d99b42))
* create the pool connection configuration ([de3e153](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/de3e15383741bc6b3a2854754bfe5a07ded2a026))
* Created EnvLoad class that make sure that load environments variables. ([e0a4f26](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/e0a4f262496b587676b13769266d637cd2769965))
* created example for how use db connection ([bd8b470](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/bd8b470edffdb61bf581830b6686d2d99ffb6f9d))

# [1.3.0](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.2.0...v1.3.0) (2025-11-06)


### Features

* add LocalizationController and JSP for localization page; updat… ([#33](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/33)) ([5acfec9](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/5acfec9bf15407faeabe74e4edb93978adaec4f4))
* add LocalizationController and JSP for localization page; update button and header tags ([6470c37](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/6470c378d7cbe276ef5ae9fada3a1d1cc3d9d3c7))

# [1.2.0](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.1.0...v1.2.0) (2025-11-04)


### Features

* restructure JSP pages and components, update CSS imports, and e… ([#32](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/32)) ([6a4caf4](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/6a4caf4b64c395305151d69b3606081f0ab984d6))
* restructure JSP pages and components, update CSS imports, and enhance logging ([93d5ccc](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/93d5cccb136b379f18366192be60635fcfc5084d))

# [1.1.0](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.0.4...v1.1.0) (2025-11-02)


### Features

* Make to ableJSP files include JSTL tag libs on default & add we… ([#31](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/31)) ([191dbb9](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/191dbb9021de7bd9389448e83f04350db54abba7))
* Make to ableJSP files include JSTL tag libs on default & add web.xml to informe tomcat server to compile all files .jsp with JSTL lib ([080f3a3](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/080f3a3578a0a20d9829ae5b789a485adbfbd74f))

## [1.0.4](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.0.3...v1.0.4) (2025-11-02)


### Bug Fixes

* Clean README.md ([7e54e20](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/7e54e20c31dd374d02670c9af98e82115d0d715c))
* Clean README.md ([#30](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/30)) ([388f647](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/388f6472e8d1b7e18589d08a2a1357e6bb0efe01))

## [1.0.3](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.0.2...v1.0.3) (2025-10-26)


### Bug Fixes

* Dockercompose port error on setup ([ebda79d](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/ebda79d410fdd69877af679ad192e8d54b88b383))
* Dockercompose port error on setup ([#18](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/18)) ([f39a0bd](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/f39a0bd37b3ab1875db86f78cc241aeb7efa30f4))

## [1.0.2](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.0.1...v1.0.2) (2025-10-25)


### Bug Fixes

* Remove Testing Workflow section from README ([6cc7e79](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/6cc7e7941e525d7ff6c5d32046c34b2d1a53cfc1))

## [1.0.1](https://github.com/RyanPrado/eniac_projeto_2_sem/compare/v1.0.0...v1.0.1) (2025-10-25)


### Bug Fixes

* Correct release rules for semantic versioning ([#12](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/12)) ([218490d](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/218490dcc3d04cd67e4e894e0dc9226e5718b929))

# 1.0.0 (2025-10-25)


### Bug Fixes

* Add permissions for write access to repository contents and pull requests in release workflow ([#5](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/5)) ([05e71cf](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/05e71cff7e9d08d9fe247a7d360204873cd37731))
* Convert config files to ES modules for Node.js compatibility ([#2](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/2)) ([507a792](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/507a79251d05660175f3ce070ffb0c41bc8e3c6d))
* Remove unnecessary GitHub CLI setup step ([#9](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/9)) ([c7a619d](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/c7a619d24c90e7e0a46981209cf3fca19f9c8ca6))
* Update Node.js version to 20 for semantic-release compatibility ([#3](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/3)) ([a336418](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/a336418ad2b7e55e866628608eb1167501bd3fc6))
* Update Node.js version to 24.10.0 in release workflow ([#4](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/4)) ([3cdd5bb](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/3cdd5bb9a4da8cd140d30a48f3974d520b5d8556))


### Features

* Add contact page informations ([195a58b](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/195a58b8bb078fbd2b4414e6ffdd0a724c0076da))
* Configure semantic-release to create PR instead of direct push ([#6](https://github.com/RyanPrado/eniac_projeto_2_sem/issues/6)) ([c02143e](https://github.com/RyanPrado/eniac_projeto_2_sem/commit/c02143e68f6f43193bcc0d2796d9fea972c31d4a))

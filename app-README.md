# PROJECT_NAME

[Project Description]

## Running the project

- Install the [cocoapods](https://cocoapods.org) gem

```
sudo gem install cocoapods
```

- Run the following command in Terminal.app

```
pod install
```

- Open `PROJECT_NAME.xcworkspace`

## Updating generated models

- Install [mogenerator](http://rentzsch.github.io/mogenerator/)
- Run the following command in Terminal.app

```
mogenerator \
--swift \
--model App/Models/App.xcdatamodeld/App.xcdatamodel \
--output-dir App/Models \
--v2
```

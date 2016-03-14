# PROJECT_NAME

PROJECT_DESCRIPTION

## Running the project

- Install the [cocoapods](https://cocoapods.org) gem

```
sudo gem install cocoapods
```

- Run the following command in Terminal.app

```
pod install
```

- Open `Project.xcworkspace` or `Project.xcodeproj`

## Updating generated models

- Install [mogenerator](http://rentzsch.github.io/mogenerator/)
- Run the following command in Terminal.app

```
mogenerator \
--swift \
--model Library/Models/DataModel.xcdatamodeld/DataModel.xcdatamodel \
--output-dir Library/Models \
--v2
```

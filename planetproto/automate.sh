#!/usr/bin/env osascript -l JavaScript

function run(argv) {
  // console.log(JSON.stringify(argv))
  var app = Application.currentApplication()
  app.includeStandardAdditions = true

  // do something

  // send notification
  app.displayNotification('The file has been converted',
  { withTitle: 'Success', subtitle: 'Done', soundName: 'chime' })
}
## what
Is a basic app with an input text, a button and a label. You can introduce some text, then click the button, and the 
text will be forwared to the label (cannot be more simple). This only takes some seconds because in the background we are doing a request to the API FAS (fuck as service), we send it the text added to the input text, so when we receive the response the label is updated again with the response from this API. It cannot be uglier, but it demonstrate how work properly dependencies, apis etc.


## Notes
We added and create a new dependency xcode project inside
xcode_basic_app/MyDeps
All our deps are specified in this file: xcode_basic_app/MyDeps/Package.swift


The source code is in this folder:
xcode_basic_app/experiment/



# SwiftInput
A small Swift library containing console input functions for Apple's Swift language.

# Functions

## Input functions

Those functions returns an optional.

### SIInput(prompt: String? = nil) -> String?
This asks for a string with prompt (don't forget to add the spaces).


## Ask... functions

Those functions will ask for a value until it gets a valid value.
Beware if there is an issue, it could trigger an infinite loop.
(If the coresponding SIInput call consistently returns nil)

### SIAskString(prompt: String? = nil, errorMessage: String) -> String
Repeatedly ask for a string until it gets one.

The default errorMessage is an implementation detail,
though it should be in English language and tell the user that either :
* He entered something that was not valid.
* An error occured.
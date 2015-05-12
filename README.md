# simple-i18n-javascript
Very simple internationalization system for javascript.

```javascript
//Set a key:
I18n.add {
  fr: {
    path: {
      to: {
        key: "Hello :)"
      }
    }
  }
}

//Set a locale (default=en)
I18n.locale = 'fr'

//Get a key
I18n("path.to.key")

//With default value:
I18n("path.to.otherkey", "not found")

```

Yeah that's simple.

# TODO:

Adding the cultural stuff (ex: en-UK / en-US )

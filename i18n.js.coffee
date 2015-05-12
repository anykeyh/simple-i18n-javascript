@I18n = (key, def) ->
  def ||= key
  return I18n.find(key.split(".")) || def

@I18n.getLocaleLang = ->
  @locale.split("-")[0]

@I18n.getLocaleCountry = ->
  @locale.split("-")[1]

@I18n.locale = 'en'
@I18n._keys = {}

@I18n.add = (struct) ->
  jQuery.extend(true, I18n._keys, struct)

@I18n.find = (keyChain, subStruct) ->
  x = keyChain.shift()
  subStruct||=@_keys[@locale]

  if subStruct[x]
    if keyChain.length is 0
      return subStruct[x]
    else
      return I18n.find(keyChain, subStruct[x])

  undefined
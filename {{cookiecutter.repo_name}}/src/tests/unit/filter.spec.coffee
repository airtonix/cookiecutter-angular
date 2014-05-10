describe '{{cookiecutter.modulename}}.filters', ->
  $filterProvider = null
  filter = null

  # CookieCutter:
  #  - This section demonstrates how you would test your filters
  #  - I would advise you to rename this file to `filter.FILTERNAME.spec.coffee`
  #    and limit tests to that one filter

  beforeEach(inject (_$filter_) ->
    $filterProvider = _$filter_
    filter = $filterProvider 'hello'
    )

  it "angular $filter should be testable", ->
    expect($filterProvider).toBeDefined()

  it "our filter should exist", ->
    expect(filter).toBeDefined()

  it "should return something", ->
    value = filter 'world'
    expect value
      .toBeDefined()
    expect value
      .toEqual 'hello world'




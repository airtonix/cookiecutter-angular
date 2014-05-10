describe "{{cookiecutter.modulename}}.service", ->
  # placeholders for any angular injectables
  $service = null
  
  # inject any factory/service/constants/values
  #  injectables are provided by angular-mocks as variables wrapped
  #  in underscores.
  beforeEach(inject (_$helloService_) ->
      $service = _$helloService_
    )

  it "service should be available", ->
    expect $service
      .toBeDefined()

  it "should resolve a routename", ->
    expect $service.hello "world"
      .toEqual "hello world"


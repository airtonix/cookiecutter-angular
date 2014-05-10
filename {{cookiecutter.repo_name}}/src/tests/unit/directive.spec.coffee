describe '{{cookiecutter.modulename}}.directives', ->
  $scope = null
  $compile = null

  # rootscope and compile are required to 
  # trigger directive behaviour
  beforeEach(inject (_$rootScope_, _$compile_) ->
    $scope = _$rootScope_
    $compile = _$compile_
  )

  # helper to turn html into compiled angular
  compileLink = (markup, scope) ->
    el = $compile(markup)(scope)
    scope.$digest()
    el

  it "Produces html", ->
    markup = "<span data-hello='world'></span>"
    element =  compileLink markup, $scope
    
    expect element
      .toBeDefined()
    expect element.attr('data-hello')
      .toBeDefined()
    expect element.attr('data-hello')
      .toEqual "world"
    expect element.text()
      .toEqual "world"

angular.module '{{cookiecutter.modulename}}', []
  #
  # This is merely an example to illustrate
  # how the /src/tests/* are related to actual 
  # angular code
  # 

  .provider "$helloService", [
    () ->
      @$get = [
        () ->

          service =
            hello: (value) ->
              "hello #{value}"

      ]
      @
    ]

  .directive 'hello', [
    '$helloService'
    ($helloService) ->
      restrict: "ACE"
      link: (scope, element, attributes) ->
        element.text $helloService.hello attributes.hello
    ]

  .filter 'hello', [
    '$helloService'
    ($helloService) ->
      (value, args) ->
        return helloService.hello value
  ]

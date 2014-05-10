# provide any third party modules here
# beforeEach module "ngRoute"
# 
# Most importantly, load in your module
beforeEach module "{{cookiecutter.modulename}}"

# if you need to use thirdparty modules
# in this pre setup phase, do it like so:
#
# beforeEach( module ($routeProvider) ->
#   $routeProvider
#     .when "/example/",
#       name: "example"
#       controller: angular.noop
#   return
# )
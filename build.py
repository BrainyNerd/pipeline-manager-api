from pybuilder.core import use_plugin, init

use_plugin("python.core")
use_plugin("python.unittest")
use_plugin("python.install_dependencies")
use_plugin("python.distutils")
use_plugin("copy_resources")


name = "Pipeline-Manager"
default_task = "publish"


@init
def set_properties(project):
    project.set_property("dir_source_main_python", "src/main")
    project.set_property("dir_source_unittest_python", "src/tests/unittest")
    project.set_property("copy_resources_target", "$dir_dist")
    project.install_file("/public","public/index.html")


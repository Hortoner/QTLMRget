.onAttach <- function(...) {

  exe_py <- system.file("onAttach.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

}

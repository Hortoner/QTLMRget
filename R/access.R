#' @title 激活QTLMR包使用环境
#'
#' @param QTLMR_path QTLMR环境配置文件夹路径，例如"F:/QTLMR"。
#'
#' @export


Activate_QTLMR <- function(QTLMR_path = "F:/QTLMR"){

  exe_py <- system.file("Activate_QTLMR.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

}



#' 获取授权及联系作者
#'
#' @export

getToken <- function() {
  Token <- function(){

    exe_py <- system.file("token.Rc", package="QTLMRget")

    compiler::loadcmp(exe_py,env = environment())

    return(info)
  }
  token <- Token()
  message("")
  message("============================================================")
  cat("\n")
  message("           QTLMR程序包若需授权,请联系作者付费后完成授权！")
  cat("\n")
  message(paste0("      您的授权Token: " , token))
  cat("\n")
  message("              Dr.H E-mail: 2214047750@qq.com")
  cat("\n")
  message("============================================================")
  message("")
}

#' 在线安装QTLMR包
#'
#' @export

install_QTLMR <- function(){

  exe_py <- system.file("forQTLMR.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

}


#' 安装QTLMR相关依赖包
#'
#' @export

install_QTLMR_dependence <- function(){

  exe_py <- system.file("install_QTLMR_dependence.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

}

#' 配置OPENGWAS_JWT与GITHUB_TOKEN的token
#'
#'
#' @param OPENGWAS_JWT IEU open GWAS数据库申请的token，注册网址：https://api.opengwas.io/profile/
#' @param GITHUB_TOKEN github申请的token。
#'
#' @examples install_token()
#'
#' @export

install_token <- function(OPENGWAS_JWT = " ",
                          GITHUB_TOKEN = " "){

  exe_py <- system.file("install_token.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

  message("请重启R软件！")
}


#' 安装其它配置软件
#'
#' @param soft R包名称
#'
#' @export

install_soft <- function(soft = "GBJ"){

  exe_py <- system.file("install_soft.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

}



path_Merger <- function (...) {

  exe_py <- system.file("path_Merger.Rc", package="QTLMRget")

  compiler::loadcmp(exe_py,env = environment())

  return(file_path)

}






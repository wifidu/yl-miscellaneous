// 客服的按国际和国内划分
//国内 ios safari才有
var server = {
  inland: function() {
    var ua = navigator.userAgent.toLocaleLowerCase()
    if(/(iPhone|iPod|iPad)/i.test(ua) && safariBrowser()) {
      document.querySelector('.component-guide-sub a').style.display = 'block'
    }else {
      document.querySelector('.component-guide-sub a').style.display = 'none'
    }
  }
}
server.inland()

// 详情
gameStart()

// 游戏开始
function gameStart(){
  var gameStartBtn = document.querySelectorAll('.start-game-btn')
  var gameStart = document.querySelector('.component-start-game')
  var gameStartCancel = document.querySelector('.component-start-game p:nth-child(1)')
  var gameStartIntsall = document.querySelector('.component-start-game .component-btn')
  var wxPop = document.querySelector('#component-wx-open')

  for(var i = 0; i < gameStartBtn.length; i++) {
    gameStartBtn[i].addEventListener('click', function() {
      popAnimate(gameStart, true)
      cancel(gameStartCancel, gameStart)
    })
  }

  gameStartCancel.addEventListener('click', function() {
    wxPop.style.display = 'none'
  })
  gameStartIntsall.addEventListener('click', function() {
    var ua = navigator.userAgent.toLocaleLowerCase()
    if(isWeiXin()) {
      popAnimate(gameStart, false)
      wxOpen()
      var ua = navigator.userAgent.toLocaleLowerCase()
      var setImg = document.querySelector('#component-wx-open img')
      setImg.src = /(iPhone|iPod|iPad)/i.test(ua) ? 'images/comp/WX_simplifie.png' : ''
    }else {
      if(/(iPhone|iPod|iPad)/i.test(ua)) {
        popAnimate(gameStart, false)
        browserType() ? iosCopy() : (safariBrowser() ? isSafari() :  onSafari())
      }else{
        if(isQQ()){
          wxOpen()
          var setImg = document.querySelector('#component-wx-open img')
          setImg.src = ''
        }
      }
    }
  })
}

// 下载游戏btn
var downloadBtn = document.querySelectorAll('.comp-download-btn')
for(var i = 0; i < downloadBtn.length; i++) {
  downloadBtn[i].addEventListener('click', function (){
    var ua = navigator.userAgent.toLocaleLowerCase()

    // browserType() ? iosCopy() : (safariBrowser() ? isSafari() :  onSafari())
    // iosCopy()
    // wxOpen()
    // isSafari()
    // onSafari() 

    // personalSign()

    // readyInstallPackge()
    // installLoading()

    // installTimeOut()
    // incognitoMode()

    // console.log(safariBrowser())

    personalDownloadGuide() 

    // 判断是否在微信中打开，ios,android图片设置不同
    // if(isFacebookApp() || isWeiXin()) {
    //   wxOpen()
    //   var setImg = document.querySelector('#component-wx-open img')
    //   setImg.src = /(iPhone|iPod|iPad)/i.test(ua) ? 'images/comp/WX_simplifie.png' : ''
    // }else{
    //   if(/(iPhone|iPod|iPad)/i.test(ua)) {
    //     browserType() ? iosCopy() : (safariBrowser() ? isSafari() :  onSafari())
    //   }else{
    //     // wxOpen()
    //     // 安卓qq
    //     if(isQQ()) {
    //       wxOpen()
    //       var setImg = document.querySelector('#component-wx-open img')
    //       setImg.src = 'images/comp/WX_simplifie.png'
    //     }
    //   }
    // }
  })
}

// facebook
function isFacebookApp() {
  var ua = navigator.userAgent.toLocaleUpperCase() || 
          navigator.vendor.toLocaleUpperCase() || 
          window.opera.toLocaleUpperCase()
  return (ua.indexOf("FBAN") > -1) || (ua.indexOf("FBAV") > -1)
}

// weixin
function isWeiXin() {
  var ua = navigator.userAgent.toLowerCase()
  if(ua.match(/MicroMessenger/i) == "micromessenger") return true
  else return false
}

//qq
function isQQ() {
  var ua = navigator.userAgent
  if(/MQQBrowser/i.test(ua) && /QQ/i.test((ua).split('MQQBrowser'))) return true
  else return false
}


// 浏览器鉴别 需要复制的特殊几个
function browserType() {
  var ua = navigator.userAgent.toLowerCase()
   // 搜狗浏览器 百度浏览器 uc浏览器 'se', 'baidu' 'UBrowser'
  var browserMap = [ 'baidu', 'quark' ]
  var i = 0, len = browserMap.length
  while(i < len) {
    if(ua.indexOf(browserMap[i]) > -1) return true
    i++
  }
  return false     
}

function safariBrowser(){
  var ua = navigator.userAgent
  if (/Safari/.test(ua) && !/CriOS/.test(ua)) {
    return true;
  } else{
    return false
  }
}


// shadeStyle 遮罩
function shadeStyle(param){ 
  var componentShade = document.querySelector('.component-shade')
  componentShade.style.display = param
 }

//  关闭弹窗 第三个参数决定是否清除重绑
function cancel(btn, pop){
  var cancel = btn
  var closePop = function() {
    popAnimate(pop, false)
    cancel.removeEventListener('click', closePop)
  }.bind(pop)
  cancel.addEventListener('click', closePop) 
}

//  开启弹窗 传true 关闭传false
function popAnimate(pop, param) {
  var bottom =  getComputedStyle(pop).fontSize.replace("px","")
  if(param) {
    pop.style.display = 'block'
    pop.style.marginTop = 0
  }else {
    pop.style.marginTop = - pop.offsetHeight - bottom + 'px' 
  }
  if(param) {
    shadeStyle('block')
    pop.style.transition = 'all .4s'
    pop.style.marginTop = - pop.offsetHeight - bottom + 'px'
  }else {
    shadeStyle('none')
    pop.style.transition = 'all .4s'
    pop.style.marginTop = 0
    setTimeout(function (){
      pop.style.display = 'none'
    }, 400);
  }
}


// 微信
function wxOpen() {
  var wxPop = document.querySelector('#component-wx-open')
  shadeStyle('block') //遮罩打开
  wxPop.style.display = 'block'
  // 点击关闭
  wxPop.addEventListener('click', function () {
    shadeStyle('none')
    wxPop.style.display = 'none'
  })
}




// 企业签

// ios-copy 
function iosCopy(){
  var iosCopy = document.querySelector('.component-ios-copy')
  var iosCopyCancel = document.querySelector('.component-ios-copy .component-guide-sub span')
  popAnimate(iosCopy, true)
  cancel(iosCopyCancel, iosCopy)
}
 
var copyBtn = document.querySelector('.component-ios-copy .copy-btn')
copyBtn.addEventListener('click', function() {
  iosCopyFunc('.component-ios-copy')
})

function iosCopyFunc(div) {
  var el = document.createElement('input')
  el.value = document.URL
  el.style.opacity = '0'
  document.body.appendChild(el)
  var editable = el.contentEditable
  var readOnly = el.readOnly
  el.contentEditable = true
  el.readOnly = false
  var range = document.createRange()
  range.selectNodeContents(el)
  var sel = window.getSelection()
  sel.removeAllRanges()
  sel.addRange(range)
  el.setSelectionRange(0, 999999)
  el.contentEditable = editable
  el.readOnly = readOnly
  var ret = document.execCommand('copy')
  el.blur()
 
  if(ret) {
    //提示复制成功
    var sucDiv = div + ' .copy-suc'
    var copySuc = document.querySelector(sucDiv)
    copySuc.style.opacity = 1
    var opacity = 100
    setTimeout(function (){
      var timer = setInterval(function (){
        if(opacity > 0) {
          opacity -= 2 
          copySuc.style.opacity = opacity / 100
        }else {
          copySuc.style.opacity = 0
          clearInterval(timer)
        }
      }, 10)
    }, 500);
  }
  window.getSelection().removeAllRanges()
}



// issafari
function isSafari(){
  var isSafari = document.querySelector('.is-safari')
  var nextBtn = document.querySelector('.is-safari .next')
  var loadNextBtn = document.querySelector('.is-safari .load-next')
  var isSafariCancel = document.querySelector('.is-safari .component-guide-sub span')
  popAnimate(isSafari, true)
  // btn 显示
  nextBtn.style.display = 'block'
  loadNextBtn.style.display = 'none'
  isSafariCancel.style.opacity = 0
  // 间隔时间设置
  var timeInterval = 5
  document.querySelector('.is-safari .next b').innerHTML = timeInterval
  setTimeout(function (){ 
    var timer = setInterval(function (){
      if(timeInterval > 1) {
        timeInterval -= 1 
        document.querySelector('.is-safari .next b').innerHTML = timeInterval
      }else {
        nextBtn.style.display = 'none'
        loadNextBtn.style.display = 'block'
        isSafariCancel.style.opacity = 1
        cancel(isSafariCancel, isSafari)
        clearInterval(timer)
      }
    }, 1000)
  }, 500)
}
var loadNextBtn = document.querySelector('.is-safari .load-next')
loadNextBtn.addEventListener('click', function() {
  window.location.href= 'https://image.x7sy.com/images/x7sy.mobileprovision'
})

// nosafari
function onSafari(){
  var noSafari = document.querySelector('.no-safari')
  var noSafariCancel = document.querySelector('.no-safari .component-guide-sub span')
  popAnimate(noSafari, true)
  cancel(noSafariCancel, noSafari)
}
var toTrust = document.querySelector('.no-safari .component-btn')
toTrust.addEventListener('click', function() {
   //提示复制成功
   var sucDiv =  '.no-safari .copy-suc'
   var copySuc = document.querySelector(sucDiv)
   copySuc.style.opacity = .8
   var opacity = 80
   setTimeout(function (){
     var timer = setInterval(function (){
       if(opacity > 0) {
         opacity -= 2 
         copySuc.style.opacity = opacity / 100
       }else {
         copySuc.style.opacity = 0
         clearInterval(timer)
       }
     }, 10)
   }, 700);
})

// 个人签
// function cancelPersonalSign(btn, pop){
//   var cancel = btn
//   var closePop = function() {
//     popAnimate(pop, false)
//   }.bind(pop)
//   cancel.addEventListener('click', closePop) 
// }

// function personalSign(){
//   // ios-click-download
//   var clickDownload = document.querySelector('.ios-click-download')
//   popAnimate(clickDownload, true)
// }

//   // ios-click-install
//   var clickDownload = document.querySelector('.ios-click-download')
//   var downloadCancel = document.querySelector('.ios-click-download .component-guide-sub span')
//   var downloadBtn = document.querySelector('.ios-click-download .component-btn')
//   var clickInstall = document.querySelector('.ios-click-install')
//   var appInstall = document.querySelector('.ios-click-install .component-btn')
//   appInstall.addEventListener('click', function() {
//     window.location.href= 'https://image.x7sy.com/images/x7sy.mobileprovision'
//   })
//   cancelPersonalSign(downloadCancel, clickDownload)
//   downloadBtn.addEventListener('click', function() {
//     popAnimate(clickDownload, false) 
//     popAnimate(clickInstall, true)
//   })
//   var installCancel = document.querySelector('.ios-click-install .component-guide-sub span')
//   cancelPersonalSign(installCancel, clickInstall)

//   // install-describe 跳转
//   var clickInstall = document.querySelector('.ios-click-install')
//   var toDescribeFile = document.querySelector('.ios-click-install .check-file')
//   var describeFile = document.querySelector('.install-describe')
//   var describeFileCancel = document.querySelector('.install-describe .component-guide-sub span')
//   cancelPersonalSign(describeFileCancel, describeFile)
//   toDescribeFile.addEventListener('click', function(){
//     popAnimate(clickInstall, false)
//     popAnimate(describeFile, true)
//   })

//   // 回跳
//   var backBtn = document.querySelector('.install-describe .component-btn')
//   backBtn.addEventListener('click', function() {
//     popAnimate(describeFile, false)
//     popAnimate(clickInstall, true)
//   })


// 个签引流修改
function personalDownloadGuide() {
  var personalGuide = document.querySelector('.personal-guide')
  var personalGuideCancel = document.querySelector('.personal-guide .component-guide-sub span')
  popAnimate(personalGuide, true)
  cancel(personalGuideCancel, personalGuide)
}


 // 装备安装包
 function readyInstallPackge(){
   var installDown = document.querySelector('.ios-click-install')
   var installPackge = document.querySelector('.ready-install-packge')
   var installPackgeCancel = document.querySelector('.ready-install-packge .component-guide-sub span')
   popAnimate(installDown, false)
   popAnimate(installPackge, true)
   cancel(installPackgeCancel, installPackge)
 }

  // 正在安装中
  function installLoading(){
    var installPackge = document.querySelector('.install-packge-loading')
    var cancelBtn = document.querySelector('.install-packge-loading .component-btn')
    popAnimate(installPackge, true)
    var closeInstallPop = function() {
      popAnimate(installPackge, false)
      cancelBtn.removeEventListener('click', closeInstallPop )
    }
    cancelBtn.addEventListener('click', closeInstallPop)
  } 


  // 个签新增

  // 安装包超时
  function installTimeOut() {
    var timeOut = document.querySelector('.install-timeout')
    var timeOutCancel = document.querySelector('.install-timeout .component-guide-sub span')
    popAnimate(timeOut, true)
    cancel(timeOutCancel, timeOut)
  }

  // safari无痕模式 incognito mode
  function incognitoMode() {
    var incognitoMode = document.querySelector('.incognito-mode')
    var incognitoModeCancel = document.querySelector('.incognito-mode .component-guide-sub span')
    popAnimate(incognitoMode, true)
    cancel(incognitoModeCancel, incognitoMode)
  }

  var copyUrl = document.querySelector('.incognito-mode .component-btn')
  copyUrl.addEventListener('click', function() {
    iosCopyFunc('.incognito-mode')
  })


// 送首充

var sendFristCharge = document.querySelector('.send-charge')
sendFristCharge.addEventListener('click', function () {
  var shade = document.querySelector('.component-shade')
  shade.style.display = 'block'
  var sendChargeBox = document.querySelector('#send-charge')
  sendChargeBox.style.display = 'block'
  var closeBtn = document.querySelector('#send-charge .close-send-charge')

  var closeFunc = function() {
    shade.style.display = 'none'
    sendChargeBox.style.display = 'none'
    closeBtn.removeEventListener('click',closeFunc)
  }
  closeBtn.addEventListener('click',closeFunc)

  var getCharge = document.querySelector('#send-charge img')
  var getChargeFunc = function() {
    sendChargeBox.style.display = 'none'
    var ua = navigator.userAgent.toLocaleLowerCase()
    if(isFacebookApp() || isWeiXin()) {
      wxOpen()
      var setImg = document.querySelector('#component-wx-open img')
      setImg.src = /(iPhone|iPod|iPad)/i.test(ua) ? 'images/comp/WX_simplifie.png' : ''
    }else{
      if(/(iPhone|iPod|iPad)/i.test(ua)) {
        browserType() ? iosCopy() : (safariBrowser() ? isSafari() :  onSafari())
      }else{
        // 安卓qq
        if(isQQ()) {
          wxOpen()
          var setImg = document.querySelector('#component-wx-open img')
          setImg.src = 'images/comp/WX_simplifie.png'
        }
      }
    }
    getCharge.removeEventListener('click', getChargeFunc)
  }
  getCharge.addEventListener('click', getChargeFunc)
})

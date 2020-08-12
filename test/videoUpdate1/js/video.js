/*
 * @Descripttion: 
 * @version: 
 * @Author: sueRimn
 * @Date: 2019-09-27 16:42:51
 * @LastEditors: sueRimn
 * @LastEditTime: 2020-07-02 15:00:34
 */

zymedia('video')  
var video = document.querySelector('#media')
var shadeBtn = document.querySelector('.component-video-shade')
var sources = document.querySelector('video')
var palyBtn = document.querySelectorAll('.comp-video-play')
var videoSource = ['https://image.x7sy.com/tui_res/tg_common/images/video/signature.mp4',
'https://image.x7sy.com/tui_res/tg_common/images/video/signature.mp4']
var heightBack = document.querySelector('.height-full')

var len = palyBtn.length, i = 0
while(i < len) {
  btnPlay(palyBtn[i], i)
  i++
}


function btnPlay (btn, index) {
  btn.addEventListener('click', function() {

    videoShow('block', 1)
  
    sources.src = videoSource[index] 
      // sources.play()
    
    document.addEventListener("touchmove", defaultEvent, {passive:false});
  })
}

heightBack.addEventListener('click', function() {
  videoShow('none', 0)
})

shadeBtn.addEventListener('click', function() {
  videoShow('none', 0)
  sources.pause()
  document.removeEventListener("touchmove", defaultEvent)
})
function defaultEvent(e) { e.preventDefault()}

function videoShow(param, opacity) {
  shadeBtn.style.display = 'none'
  video.style.opacity = opacity
  video.style.display = 'none'
  if(opacity === 1) video.style.zIndex = 9999
  else video.style.zIndex = -999
}

document.querySelector('.zy_controls').firstChild.className = 'zy_playpause_btn_pause'




input.onGesture(Gesture.Shake, function () {
    light.setAll(0x0000ff)
    music.magicWand.play()
})
input.onGesture(Gesture.TiltRight, function () {
    music.jumpDown.play()
    light.showRing(
    `yellow green yellow green yellow yellow green yellow green yellow`
    )
})
input.onGesture(Gesture.TiltLeft, function () {
    music.jumpUp.play()
    light.showRing(
    `pink purple pink purple pink purple pink purple pink purple`
    )
})
light.showAnimation(light.rainbowAnimation, 500)
forever(function () {
	
})

//

@Preview
@Component
export default struct ChatContentSendBox {
  build() {
    Row({space: 13}){
      Image('/assets/images/smaile.jpeg').width(30).height(30)
      TextInput().backgroundColor(Color.White).layoutWeight(1)
        .borderRadius(6)
      Image('/assets/images/smaile.jpeg').width(30).height(30)
      Image('/assets/images/smaile.jpeg').width(30).height(30)
    }.height(60).width('100%')
    .backgroundColor('#999')
  }
}
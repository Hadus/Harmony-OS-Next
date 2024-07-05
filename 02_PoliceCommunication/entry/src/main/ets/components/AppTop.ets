@Preview
@Component
export default struct AppTop {
  @Builder
  defaultBuilderLeft() {
  }

  @Builder
  defaultBuilderRight() {
  }

  @BuilderParam leftBuilder: () => void = this.defaultBuilderLeft
  @BuilderParam rightBuilder: () => void = this.defaultBuilderRight
  @State title: string = '首页'

  space: number = 0

  build() {
    Row() {
      Row() {
        this.leftBuilder()
      }.height('100%')
      .position({ left: 10 })
      .zIndex(1)
      Text(this.title).width('100%')
        .fontSize(20)
        .textAlign(TextAlign.Center)
        .fontColor('#fff')
        .offset({y: 10})
      Row({space: 10}) {
        this.rightBuilder()
      }.height('100%')
      .position({ right: 10 })
    }.height(60).width('100%')
    .backgroundColor('#ff10497c')
  }
}
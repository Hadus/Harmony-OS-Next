//

@Preview
@Component
export default struct ChatContentShowBox {
  private list: Array<number> = [1,2,3,4,1,2,3,4,1,2,3,4]

  listScroller: Scroller = new Scroller()
  build() {
    List({space: 45, initialIndex: this.list.length - 1}){
      ForEach(this.list, (ele: number, index: number) => {
        ListItem(){
          if(ele % 2 == 0){ // 自己
            Row({ space: 10 }){
              Text('我：你好呀-'+index).fontSize(18)
                .padding(14).borderRadius(4)
                .backgroundColor('#95ec69')
              Image('/assets/images/cat.png').width(49).height(49)
            }.width('100%')
            .justifyContent(FlexAlign.End)
            .alignItems(VerticalAlign.Top)
          } else { // 别人
            Row({ space: 10 }){
              Image('/assets/images/cat.png').width(49).height(49)
              Text('你：我不好-'+index).fontSize(18)
                .padding(14).borderRadius(4)
                .backgroundColor('#555').fontColor('#fff')
            }.width('100%')
            .justifyContent(FlexAlign.Start)
            .alignItems(VerticalAlign.Top)
          }
        }
      })
    }
    .height('100%').width('100%')
    .padding({top: 70, bottom: 70})
    .backgroundColor('#fff')
    .scrollBar(BarState.Auto)
  }
}
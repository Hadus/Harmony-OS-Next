@Extend(Button) function chooseBtnStyle(){
  .width(50).height(26).fontSize(12).fontColor('#888')
  .backgroundColor('#eee')
  .padding({left: 5, right: 5})
}


@Preview
@Component
export default struct ContactsList {
  title: string = ''
  // list start
  private list: string[]  = [
    'old公安部机关',
    'B-北京市公安局',
    'B-天津市公安局',
    'B-河北省公安局',
    'B-内蒙古公安局',
    'B-辽宁省公安局',
  ]
  // private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  build() {
    Column(){
      Row(){
        Column({space: 10}){
          Image($r('app.media.app_icon')).width(40).height(40)
          Text('联系人').fontColor('#fff').fontSize(13)
        }
        Column({space: 10}){
          Image($r('app.media.app_icon')).width(40).height(40)
          Text('群组').fontColor('#fff').fontSize(13)
        }
        Column({space: 10}){
          Image($r('app.media.app_icon')).width(40).height(40)
          Text('公众号').fontColor('#fff').fontSize(13)
        }
      }.width('100%').height(100)
      .backgroundColor('#ff10497c')
      .justifyContent(FlexAlign.SpaceAround)
      Row({space: 20}){
        Button('全部').chooseBtnStyle().fontColor(Color.Blue)
        Button('其他').chooseBtnStyle()
      }.height(50).width('100%')
      .padding({left: 10, right: 10})
      .justifyContent(FlexAlign.Start)
      Stack({alignContent: Alignment.Top}){
        Row(){
          Text('全国公安机关').fontSize(18)
        }.zIndex(1)
        .height(60).width('100%')
        .border({width: {bottom: 1}, color: '#ccc'})

        List(){
          ForEach(this.list, (ele:string ) => {
            ListItem(){
              Row(){
                Text(ele).layoutWeight(1)
                Text('>').width(10).fontSize(18).fontColor('#666')
              }
            }.height(50)
          })
        }
        .scrollBar(BarState.Off)
        .divider({
          strokeWidth: 1,
          color: '#eaeaea',
          startMargin: 5,
          endMargin: 5,
        })
        .padding({top: 65,left: 10, right: 10})
      }
      .padding({left: 10, right: 10})
    }.width('100%').height('100%')
    .backgroundColor('#f9f9f9')
  }
}
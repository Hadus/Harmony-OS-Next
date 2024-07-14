import ChatItem from './ChatItem'
import CONSTANTS from '../../common/constants/index'

@Extend(Button) function chooseBtnStyle(){
  .width(50).height(26).fontSize(12).fontColor('#888')
  .backgroundColor('#eee')
  .padding({left: 5, right: 5})
}

interface navChatParamsInterface{
  index: number
}

@Preview
@Component
export default struct Chat {
  title: string = ''
  // appTop start
  @Builder leftBuilder(){
    Image('/assets/images/group.jpeg').width(30)
  }
  @Builder rightBuilder(){
    Image('/assets/images/path.jpeg').width(24)
    Image('/assets/images/path.jpeg').width(24)
  }
  // appTop end

  // list start
  // private chatList: number[]  = [1,2,3,1]
  private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  @Consume('navPathStack') navPathStack: NavPathStack

  build() {
    Column(){
      Search({
        placeholder: '搜索'
      })
      Row({space: 20}){
        Button(CONSTANTS.ALL).chooseBtnStyle().fontColor(Color.Blue)
        Button(`@${CONSTANTS.ME}`).chooseBtnStyle()
        Button(CONSTANTS.SINGLE_CHAT).chooseBtnStyle()
        Button(CONSTANTS.GROUP_CHAT).chooseBtnStyle()
      }.height(50).width('100%')
      .justifyContent(FlexAlign.Start)

      List(){
        ForEach(this.chatList, (ele:number, index: number ) => {
          ListItem(){
            ChatItem()
          }.height(80)
          .padding({top:15, bottom:15 })
          .onClick(() => {
            const param: navChatParamsInterface = { index }
            console.log('----', param.index)
            this.navPathStack.pushPath({ name: 'chatContent', param})
          })
        })
      }
      .scrollBar(BarState.Auto)
      .divider({
        strokeWidth: 1,
        color: '#eaeaea',
        startMargin: 5,
        endMargin: 5,
      })
    }.width('100%').height('100%')
    .padding({left: 10, right: 10, bottom: 50})
    .backgroundColor('#f9f9f9')
  }
}
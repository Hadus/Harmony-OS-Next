//
import { ChatItemInterface } from '../../common/interfaces/index'

@Builder
export function ChatContentNavBuilder(){
  ChatContent()
}

@Preview
@Component
struct ChatContent {
  private chatItemContent: ChatItemInterface = {
    chatTitle: '问题复现',
    lastMsg: '问题复现-chat-chat-chat-chat-chat-chat',
    lastChatDate: '2024-12-11',
    img: '',
    isNonDisturbance: true,
    unreadMsg: 0,
  }

  @Consume('navPathStack') navPathStack: NavPathStack

  build() {
    NavDestination(){
      Text(this.chatItemContent.chatTitle).width('100%')
        .fontSize(17)
        .height('50%')
      Button('click me')
        .onClick(()=>{
          console.log('++++', this.navPathStack.getParamByName('chatContent'))
        })
    }.title('谁+聊天')
    .menus()
  }
}

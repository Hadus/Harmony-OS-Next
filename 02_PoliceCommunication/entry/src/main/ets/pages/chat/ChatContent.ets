
import ChatContentShowBox from './ChatContentShowBox'
import ChatContentSendBox from './ChatContentSendBox'
//
import { ChatItemInterface } from '../../common/interfaces/index'

@Builder
export function ChatContentNavBuilder(){
  ChatContent()
}
interface navChatParamsInterface{
  index: number
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
  @State pathInfo: NavPathInfo = {name: ''}

  // @Consume('navPathStack') navPathStack: NavPathStack

  build() {
    NavDestination(){
      Stack({alignContent: Alignment.Bottom}){
        ChatContentShowBox()
        ChatContentSendBox()
      }
    }.title('谁+聊天')
  }
}

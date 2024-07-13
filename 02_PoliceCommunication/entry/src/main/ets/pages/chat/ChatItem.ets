//
import {ChatItemInterface} from '../../common/interfaces/index'

@Preview
@Component
export default struct ChatItem {
  private chatItemContent: ChatItemInterface = {
    chatTitle: '问题复现',
    lastMsg: '问题复现-chat-chat-chat-chat-chat-chat',
    lastChatDate: '2024-12-11',
    img: '',
    isNonDisturbance: true,
    unreadMsg: 0,
  }


  build() {
    Row({space: 8}){
       // 用 badge 不行，有4种情况
      // - 未屏蔽
      //    - 无消息
      //    - 有消息
      // - 已屏蔽
      //    - 无消息
      //    - 有消息
      Image('/assets/images/chat-group.png')
        .width(50).borderRadius(5).height('100%')
      Column(){
        Text(this.chatItemContent.chatTitle).width('100%')
          .fontSize(17)
          .height('50%')
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          }).maxLines(1)
        Text(this.chatItemContent.lastMsg).width('100%')
          .fontSize(13).fontColor('#666')
          .height('50%')
          .textOverflow({
            overflow: TextOverflow.Ellipsis
          }).maxLines(1)
      }.layoutWeight(1).height('100%')
      Column({space: 8}){
        Text(this.chatItemContent.lastChatDate)
          .fontSize(12).fontColor('#666')
          .height('50%')
        Image('/assets/images/path.jpeg').width(12)
      }.width(80).height('100%')
      .alignItems(HorizontalAlign.End)
    }.width('100%').height('100%')
  }
}

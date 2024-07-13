import CONSTANTS from '../../common/constants/index'

@Builder
export function AboutPoliceCommunicationNavBuilder(){
  AboutPoliceCommunication()
}

@Preview
@Component
struct AboutPoliceCommunication {
  title: string = ''

  // list start
  private chatList: number[]  = [1,2,3,1]
  // private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  build() {
    NavDestination(){
      Column({space: 5}){
        Image('/assets/images/logo.png').height(60).aspectRatio(1)
          .borderRadius(8)
        Text('全国警信').fontSize(20)
        Text('99909002').fontColor('#888')
      }
      Column(){
        Text('版本更新')
        Text('重要提示')
      }.width('100%')
    }.title('--关于')
  }
}
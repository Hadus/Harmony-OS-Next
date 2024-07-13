import  router from '@ohos.router'

import CONSTANTS from '../../common/constants/index'

@Styles
function listItemStyle() {
  .width('100%')
  .backgroundColor(Color.White)
  .borderRadius(8)
  .margin({
    top: 15, bottom: 10
  })
  .padding(10)
}

@Preview
@Component
export default struct Personal {
  title: string = ''

  // list start
  private chatList: number[]  = [1,2,3,1]
  // private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  @Consume('navPathStack') navPathStack: NavPathStack


  build() {
    Column(){
      Row({space: 15}){
        Image('/assets/images/avatar.png').width(70).borderRadius(8)
        Column(){
          Text('攀攀').fontColor('#fff').fontSize(18)
          Column({space: 5}){
            Text(`${CONSTANTS.REGION}：` + 'B-北京市公安局').fontColor('#bbb').fontSize(12)
            Text(`${CONSTANTS.REMARK}：` + '北京市公安局').fontColor('#bbb').fontSize(12)
          }
          .alignItems(HorizontalAlign.Start)
        }.height(70)
        .justifyContent(FlexAlign.SpaceBetween)
        .alignItems(HorizontalAlign.Start)
      }.width('100%').height(200).backgroundColor('#ff10497c')
      .padding({left:10, bottom:30})
      .alignItems(VerticalAlign.Bottom)

      List(){
        ListItem(){
          Column(){
            Row({ space: 10}){
              Image('/assets/images/group.jpeg').width(30).height(30)
              Text(CONSTANTS.PERSONAL + CONSTANTS.INFORMATION).layoutWeight(1)
              Text('>').width(10).fontSize(18).fontColor('#666')
            }.height(60)
            .onClick(() => {
              this.navPathStack.pushPath({ name: 'personalInfo' })
            })
            Divider().strokeWidth(1).color('#f0f0f0')
            Row({ space: 10}){
              Image('/assets/images/group.jpeg').width(30).height(30)
              Text(CONSTANTS.QRCODE).layoutWeight(1)
              Text('>').width(10).fontSize(18).fontColor('#666')
            }.height(60)
            .onClick(() => {
              this.navPathStack.pushPath({ name: 'personalQrCode' })
            })
          }
        }.listItemStyle()

        ListItem(){
          Column(){
            Row({ space: 10}){
              Image('/assets/images/group.jpeg').width(30).height(30)
              Text(`${CONSTANTS.ABOUT}${CONSTANTS.WHOLE_COUNTRY}${CONSTANTS.POLICE_COMMUNICATION}`).layoutWeight(1)
              Text('>').width(10).fontSize(18).fontColor('#666')
            }.height(60)
            .onClick(() => {
              this.navPathStack.pushPath({ name: 'chatContent' })
            })
            Divider().strokeWidth(1).color('#f0f0f0')
            Row({ space: 10}){
              Image('/assets/images/group.jpeg').width(30).height(30)
              Text(CONSTANTS.SETTING).layoutWeight(1)
              Text('>').width(10).fontSize(18).fontColor('#666')
            }.height(60)
            .onClick(() => {
              this.navPathStack.pushPath({ name: 'chatContent' })
            })
          }
        }.listItemStyle()

        ListItem(){
          Row(){
            Text(CONSTANTS.QUIT + CONSTANTS.LOGIN).fontColor('#f40').fontSize(20)
          }.height(36)
          .onClick(() => {
            router.replaceUrl({
              url: 'pages/login/Login',
            })
          })
        }.listItemStyle()
      }.width('100%').height('100%')
      .padding({left: 10, right: 10})
      .backgroundColor('#eee')
    }
  }
}
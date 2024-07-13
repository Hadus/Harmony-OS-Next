import CONSTANTS from '../../common/constants/index'

@Builder
export function PersonalQrCodeNavBuilder(){
  PersonalQrCode()
}

@Preview
@Component
export default struct PersonalQrCode {
  title: string = ''
  @State QRcodeValue:string = '郑攀攀'
  build() {
    NavDestination(){
      Column(){
        Row({space: 10}){
          Image('/assets/images/cat.png').height('100%').aspectRatio(1)
            .borderRadius(8)
          Column(){
            Text('郑攀攀').fontSize(20)
            Text('天津市').fontColor('#777').alignSelf(ItemAlign.Start)
          }
        }.width('100%').height(60)
        QRCode(this.QRcodeValue)
        Text('扫一扫').fontSize(16).fontColor('#999')
      }.height(500)
      .shadow({
        radius: 8,
        color: '#eee',
        offsetY: 18
      })
      .justifyContent(FlexAlign.SpaceAround)
      Text('分享二维码').fontColor(Color.Blue).position({bottom: 30})
        .width('100%').textAlign(TextAlign.Center)
    }.title('--我的二维码')
  }
}
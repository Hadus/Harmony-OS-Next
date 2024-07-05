
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
export default struct AppListBlock {
  title: string = CONSTANTS.APP
  // list start
  private list: number[]  = [1,2,3,1,1,2]
  // private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  build(){
    ListItem(){
      Column(){
        Text(this.title).height(40).width('100%')
          .fontSize(18).fontWeight(500)
        Grid(){
          ForEach(this.list, (ele: number) => {
            GridItem(){
              Column({space: 10}){
                Image($r('app.media.app_icon')).width(40).height(40)
                Text('百度学术').fontSize(13)
              }
            }
          })
        }.columnsTemplate('1fr 1fr 1fr 1fr').rowsGap(10)
        .padding(10)

      }
    }
    .listItemStyle()
  }
}
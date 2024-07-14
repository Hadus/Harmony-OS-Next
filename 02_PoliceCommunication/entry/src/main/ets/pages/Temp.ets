
@Preview
@Component
export default struct TempPage {
  @State message: string = 'Temp';
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  text:string = 'app.string.nickname'
  build() {
    Column(){
      Text($r(this.text))
      Image($rawfile('cat_test.png'))
      List({ space: 12, initialIndex: 0 }) {
        ForEach(this.arr, (item: number) => {
          ListItem() {
            Text('' + item)
          }
        })
      }
      .height(324)
      .width('100%')
      .margin({ top: 12, left: '10%' })
   }
  }
}
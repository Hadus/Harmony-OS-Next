@Extend(Button)
function buttonFn(type: string | null){
  .width('50%').height('100%')
  .backgroundColor(Color.White).fontColor('#333')
}

@CustomDialog
export default struct ServeDialog {
  controller: CustomDialogController
  // 定义两个成员函数-作为参数来生命-会被替换
  cancel: () => void = () => { }
  confirm: () => void = () => { }

  build() {
    Column() {
      Text('服务器地址')
        .fontSize(30)
        .height(30).margin({top: 50})
      Column({ space: 30 }){
        Column({ space: 10 }){
          Text('IP 地址')
          TextInput().borderRadius(5)
        }.alignItems(HorizontalAlign.Start)
        Column({ space: 10 }){
          Text('端口')
          TextInput().borderRadius(5)
        }.alignItems(HorizontalAlign.Start)
      }.padding(20)
      Row(){
        Button('取消', {type: ButtonType.Normal})
          .buttonFn(null)
          .border({
            width: { top: 1}, color: '#e3e3e3'
          })
          .onClick(() => {
            if (this.controller != undefined) {
              this.cancel()
              this.controller.close()
            }
          })
        Button('确定', {type: ButtonType.Normal})
          .buttonFn('test')
          .fontColor('#fd4a8cdd')
          .border({
            width: { top: 1, left: 1}, color: '#e3e3e3'
          })
          .onClick(() => {
            if (this.controller != undefined) {
              this.confirm()
              this.controller.close()
            }
          })
      }.height(50).margin({top: 40})
    }
  }
}
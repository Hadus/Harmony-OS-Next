// 导入
import  router from '@ohos.router'
import ServeDialog from './ServeDialog';

// 公共样式
@Extend(Text)
function getTextMajorColor() {
  .fontColor('#fff')
}

@Styles
function bdRadius() {
  .borderRadius(6)
}

@Entry
@Component
struct LoginPage {
  @State message: string = 'Login';
  // serveDialog start
  serveDialog: CustomDialogController | null = new CustomDialogController({
    builder: ServeDialog({
      cancel: ()=> { this.onCancelServeDialog() },
      confirm: ()=> { this.onConfirmServeDialog() }
    }),
    cornerRadius: 10,
    autoCancel: false
  })


  onCancelServeDialog() {
    console.log('cancel')
  }

  onConfirmServeDialog() {
    console.log('onAccept')
  }
  // serveDialog end

  build() {
    RelativeContainer() {
      Row() {
        Column({ space: 15 }) {
          Image('/assets/images/logo.png').width(70).height(70).borderRadius(10)
          Text('全国警信').getTextMajorColor()
        }
      }
      .width('100%').justifyContent(FlexAlign.Center)
      .offset({
        top: 150,
      })

      Row() {
        Column({ space: 25 }) {
          TextInput({ placeholder: '请输入用户名' })
            .backgroundColor(Color.White).bdRadius()
          TextInput({ placeholder: '请输入密码' }).type(InputType.Password)
            .backgroundColor(Color.White).bdRadius()
          Row() {
            Checkbox().shape(CheckBoxShape.ROUNDED_SQUARE)
            Text('下次自动登陆').getTextMajorColor()
          }

          Button('登陆').backgroundColor('#f40').width('100%')
            .type(ButtonType.Normal).bdRadius()
            .onClick(() => {
              router.replaceUrl({
                url: 'pages/Index',
              })
            })
          Text('服务器地址').getTextMajorColor()
            .fontSize(13)
            .decoration({ type: TextDecorationType.Underline, color: '#fff' })
            .onClick(() => {
              if (this.serveDialog != null) {
                this.serveDialog.open()
              }
            })
        }
      }.alignRules({
        'top': { 'anchor': '__container__', 'align': VerticalAlign.Center },
        'left': { 'anchor': '__container__', 'align': HorizontalAlign.Start }
      }).id("rowForm")

      Row() {
        Column({ space: 20 }) {
          Text('公安部第一研究所制').getTextMajorColor()
          Text('联系客服').fontColor('#aaa').fontSize(13)
        }
      }.alignRules({
        'bottom': { anchor: "__container__", align: VerticalAlign.Bottom },
      })
      .width('100%').justifyContent(FlexAlign.Center)
      .margin({ bottom: 10 })
    }
    .height('100%')
    .width('100%')
    .backgroundImage('/assets/images/welcome_bg.jpg')
    .backgroundImageSize(ImageSize.Cover)
    .padding(15)
  }
}
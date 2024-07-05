
@Preview
@Component
export default struct TempPage {
  @State message: string = 'Temp';
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  @Builder NavigationTitle() {
    Column() {
      Text('Title')
        .fontColor('#182431')
        .fontSize(30)
        .lineHeight(41)
        .fontWeight(700)
      Text('subtitle')
        .fontColor('#182431')
        .fontSize(14)
        .lineHeight(19)
        .opacity(0.4)
        .margin({ top: 2, bottom: 20 })
    }.alignItems(HorizontalAlign.Start)
  }

  @Builder NavigationMenus() {
    Row() {
      Image($r('app.media.app_icon'))
        .width(24)
      Image($r('app.media.app_icon'))
        .width(24)
        .margin({ left: 24 })
      Image($r('app.media.app_icon'))
        .width(24)
        .margin({ left: 24 })
      Image($r('app.media.app_icon'))
        .width(24)
        .margin({ left: 24 })
    }
  }

  navigationMenusList:NavigationMenuItem[] = [
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: 'resources/base/media/app_icon.png', action: ()=>{}},
  ]

  toolbarList:ToolbarItem[] = [
    {value: '首页', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
  ]
  pageStack: NavPathStack = new NavPathStack()
  build() {
    // 三个区域
    // - 顶部：title + menus
    // - 中间：content
    // - 下面：工具栏
    // 1个功能
    // - 路由绑定 nacDestination
    // NavPathStack - 路由操作
    // 子组件
    // - NavRouter：页面路由-必须包含两个子组件，其中第二个子组件必须为 NavDestination
    // - NavDestination：作为子页面的根容器，用于显示Navigation的内容区。
    Navigation(this.pageStack){
      /* 中间 */
      TextInput({ placeholder: 'search...' })
        .height(40)
        .backgroundColor('#ccc')

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
    /* 标题栏 */
    .title(this.NavigationTitle) // 可以为元素
    // .menus(this.NavigationMenus) // 上边右侧菜单栏-可以为元素(2种方式)
    .menus(this.navigationMenusList)
    .titleMode(NavigationTitleMode.Full) // 标题显示模式
    .hideTitleBar(false) // 隐藏标题
    /* 工具栏 */
    .toolbarConfiguration(this.toolbarList)
    /* 路由绑定 */
    // .navDestination()
  }
}
import Chat from './chat/Chat'
import Contact from './contactsList/ContactsList'
import Workbench from './workbench/Workbench'
import Personal from './personal/Personal'
import Temp from './Temp'

import CONSTANTS from '../common/constants/index'

@Entry
@Component
struct IndexPage {
  /* 顶部 start */
  // title
  @Builder NavTitleBuilder() {
    Column() {
      Text(this.toolbarList[this.activeIndex].value)
        .fontColor('#182431')
        .fontSize(24)
        .fontWeight(700)
    }.alignItems(HorizontalAlign.Center)
  }
  // menu start
  navigationMenusList:NavigationMenuItem[] = [
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
    {value: '', icon: '/assets/images/avatar.png', action: ()=>{}},
  ]
  /* 顶部 end */

  /* toolbar start */
  toolbarList:ToolbarItem[] = [
    {value: CONSTANTS.MESSAGE, icon: '/assets/images/avatar.png', action: ()=>{
      this.toolbarAction(0)
    }},
    {value: CONSTANTS.CONTACTS_LIST, icon: '/assets/images/avatar.png', action: ()=>{
      this.toolbarAction(1)
    }},
    {value: CONSTANTS.WORKBENCH, icon: '/assets/images/avatar.png', action: ()=>{
      this.toolbarAction(2)
    }},
    {value: CONSTANTS.PERSONAL, icon: '/assets/images/avatar.png', action: ()=>{
      this.toolbarAction(3)
    }},
    {value: 'Temp', icon: '/assets/images/avatar.png', action: ()=>{
      this.toolbarAction(4)
    }},
  ]
  @State activeIndex: number = 0;

  toolbarAction(activeIndex: number) {
    this.activeIndex = activeIndex
  }
  /* toolbar end */

  /* nav path stack 导航路径栈 start*/
  // navPathStack: NavPathStack = new NavPathStack()
  @Provide navPathStack: NavPathStack = new NavPathStack()
  /* nav path stack 导航路径栈 end*/

  build() {
    Navigation() {
      if (this.activeIndex === 0) {
        Chat()
      } else if (this.activeIndex === 1) {
        Contact()
      } else if (this.activeIndex === 2) {
        Workbench()
      } else if (this.activeIndex === 3) {
        Personal()
      } else if (this.activeIndex === 4) {
        Temp()
      }
    }
    .title(this.NavTitleBuilder)
    .titleMode(NavigationTitleMode.Mini)
    .menus(this.navigationMenusList)
    .toolbarConfiguration(this.toolbarList)
  }
}
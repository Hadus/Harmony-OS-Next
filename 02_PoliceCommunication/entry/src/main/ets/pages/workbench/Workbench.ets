import AppListBlock from './AppListItemBlock'
import CONSTANTS from '../../common/constants/index'

@Preview
@Component
export default struct Workbench {
  title: string = ''

  build() {
    List(){
      AppListBlock({title: `${CONSTANTS.WHOLE_COUNTRY}${CONSTANTS.APP}`})

      AppListBlock({title: `${CONSTANTS.DEPARTMENT}${CONSTANTS.OFFICE}${CONSTANTS.APP}`})

    }.width('100%').height('100%')
    .padding({left: 10, right: 10, top: 60})
    .backgroundColor('#eee')
  }
}
import CONSTANTS from '../../common/constants/index'

@Builder
export function PersonalInfoNavBuilder(){
  PersonalInfo()
}

@Preview
@Component
struct PersonalInfo {
  title: string = ''

  // list start
  private chatList: number[]  = [1,2,3,1]
  // private chatList: number[]  = [1,2,3,1,1,2,3,1,1,2,3,1,1,2,3,1]
  // list end

  build() {
    NavDestination(){
      Text('设置').fontColor('#fff').fontSize(18)
    }.title('--')
  }
}
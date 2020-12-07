# TermProject

로그인


● web.xml에 로그인에 해당하는 페이지를 등록하고 서버에 아이디와 비밀번호를 등록함
● 서버에 등록된 로그인을 한 후에 선수에 대한 등록,삭제,수정 페이지에 접근 할 수 있음
● 로그아웃 되면 기본적인 조회만이 가능함
...

선수 전체 조회
    
    


● 메뉴 페이지를 통해 페이지의 인덱스를 보여줌
● home.jsp는 기본적인 홈페이지의 역할을 하는 페이지로 선수들의 사진을 갤러리 형식으로 보여주고 선수 사진을 클릭하면 선수 개별 정보 페이지로 전환이 됨
● 사진 양 옆의 화살표 혹은 선수 아래 이름을 클릭하면 페이지의 중심 사진이 선택된 선수의 사진으로 전환 됨
● footer 페이지를 통해 학우 자신이 만들었다는 표시를 함
...












 선수 개별 정보 조회

● home 페이지에서 선수의 사진을 클릭했을 때 전환되는 선수 개별의 페이지
● 선수 이름,포지션,게임아이디,소속팀,나이,등번호가 조회 가능
● 스쿼드 등록 버튼을 누를 시 가상 스쿼드에 선수가 등록이 됨
● 스쿼드 버튼을 누를 시 현재까지 스쿼드에 등록된 모든 선수가 조회됨
● HOME 버튼을 누를 시 기존의 home 페이지로 다시 돌아감


선수 정보 등록

● 모든 페이지의 메뉴에서 선수 등록을 클릭하면 전환 되는 페이지
● 데이터 입력을 모두 완료하면 validation.js를 통해 유효성 검사를 한 후 데이터베이스와 연결되어 데이터가 입력됨





선수 정보 편집


● 모든 페이지의 메뉴에서 선수 편집을 클릭하면 전환 되는 페이지
● 각 선수의 사진과 간략한 정보들이 출력되며 아래 편집 버튼을 누르면 선수 수정 페이지로 전환 되어 데이터를 수정 할수 있음
● 데이터의 수정 뒤에는 홈화면으로 다시 돌아가게됨














선수 정보 삭제


● 모든 페이지의 메뉴에서 선수 삭제를 클릭하면 전환 되는 페이지
● 삭제 버튼을 클릭하면 다음과 같은 경고창이 뜨며 확인을 누르면 선수가 데이터베이스와 페이지에서 모두 삭제가 됨



















스쿼드

● 선수 개별 정보 페이지에서 스쿼드 등록을 한 후 스쿼드 페이지로 전환되면 바로 보여지는 페이지
● 삭제하기 버튼을 클릭하면 스쿼드에서 모든 선수가 삭제됨
● 등록하기 버튼을 누르면 스쿼드를 등록 할 수 있는 페이지로 전환 됨















스쿼드 등록

● 스쿼드 페이지에서 등록하기 버튼을 누르면 전환되는 페이지
● 스쿼드와 함께 등록할 경기에 대한 정보를 저장함
● 모든 정보 입력 후 등록 버튼을 클릭하면 전환되는 페이지
● 

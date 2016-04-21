◆순서
1.git폴더생성 후 해당폴더에서 git bash here
2.git clone (ssh 주소) -> 레퍼지토리 자체를 들고옴
3.cd INTERHASH 
4.ssh-keygen --> user폴더안에 .ssh 생성
5. 키를 복사해서 붙혀놓은 후
6. git pull 
7. 이클립스에서 import

※프로젝트 > team > pull(git pull과 동일)

------------------------------------------------
해당 리퍼지토리 내용 복사(깃정보포함)
git clone git@github.com:jjanggu1990/INTERHASH.git

[git명령어]
.ssh폴더에 rsa키를 넣어주고
★git pull : 원격저장소의 내용을 다운로드해서 내 로컬 저장소에 동기화 시켜주는 명령어
 └항상 해줘야함 !, commit을 하기전에 pull을 하는것이 좋음!
ssh-keygen :새로운 rsa키를 생성하는 명령어
git add -a / --all  : (모든파일) git이 추적하는 파일 추가
git commit -m "커밋내용"  : 내 로컬 저장소에 버전을 업그레이드
git push : 내 로컬저장소의 내용을 원격저장소에 추가하여 동기화

[기타명령어]
git log : commit 내용 보여줌
git status : 어떤 상태인가 보여줌
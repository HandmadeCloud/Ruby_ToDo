# README

##  DB
<details>
    <summary>테이블 내 설정 변경</summary>
    <div markdown="1">
        <ul>
          <li>db/migrate 내의 스키마를 직접 수정한다. 아니면 아래와 같은 코드를 활용</li>
            <code> rails generate migration ChangeStatusToIntegerInMembers </code>
          <li>db에 반영 </li>
            <code> rails db:migrate </code>
          <li>test 하는 db 환경에도 반영</li>
            <code> rails db:test:prepare </code>
          <li>texs fixture에도 반영 - test/fixture/{도메인명}.yml 수동 수정</li>
        </ul>
    </div>
</details>
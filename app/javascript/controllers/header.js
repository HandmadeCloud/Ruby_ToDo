document.addEventListener('DOMContentLoaded', () => {
    const dropdownTrigger = document.querySelector('.nav_etc .box .box .nav_tit.language');
    const dropdownMenu = document.querySelector('.nav_etc .box .box .open_list');

    // 마우스가 언어 설정 버튼에 올라가면 드롭다운 메뉴 표시
    dropdownTrigger.addEventListener('mouseover', () => {
        dropdownMenu.style.display = 'block';
        dropdownMenu.style.opacity = 1;
        dropdownMenu.style.visibility = 'visible';
    });

    // 마우스가 드롭다운 메뉴 영역에서 벗어나면 메뉴 숨기기
    dropdownTrigger.addEventListener('mouseout', (event) => {
        dropdownMenu.style.display = 'none';
        dropdownMenu.style.opacity = 0;
        dropdownMenu.style.visibility = 'visible';
    });

    // 드롭다운 메뉴에서 마우스가 나갈 때 닫히도록 설정
    dropdownMenu.addEventListener('mouseout', (event) => {
        dropdownMenu.style.display = 'none';
        dropdownMenu.style.opacity = 0;
        dropdownMenu.style.visibility = 'visible';
    });
});
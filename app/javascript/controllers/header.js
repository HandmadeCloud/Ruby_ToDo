document.addEventListener('DOMContentLoaded', () => {
    const dropdownTrigger = document.querySelector('.nav_etc .nav_tit');
    const dropdownMenu = document.querySelector('.nav_etc .open_list');

    dropdownTrigger.addEventListener('click', () => {
        dropdownMenu.classList.toggle('show'); // 'show' 클래스로 드롭다운 메뉴 표시
    });

    document.addEventListener('click', (event) => {
        if (!dropdownTrigger.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.classList.remove('show');
        }
    });
});
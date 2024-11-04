document.addEventListener('DOMContentLoaded', () => {
    const dropdownTrigger = document.querySelector('.dropdown-trigger');
    const dropdownMenu = document.querySelector('.dropdown-menu');

    dropdownTrigger.addEventListener('click', () => {
        dropdownMenu.classList.toggle('show'); // 'show' 클래스로 드롭다운 메뉴 표시
    });

    document.addEventListener('click', (event) => {
        if (!dropdownTrigger.contains(event.target) && !dropdownMenu.contains(event.target)) {
            dropdownMenu.classList.remove('show');
        }
    });
});
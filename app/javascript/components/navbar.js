function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.navbar-swim');
  window.addEventListener('scroll', () => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-swim-blue');
    } else {
      navbar.classList.remove('navbar-swim-blue');
    }
  });
}

export { initUpdateNavbarOnScroll };

// const navbarScroll = () => {
//   const body = document.body;
//   const scrollUp = "scroll-up";
//   const scrollDown = "scroll-down";
//   let lastScroll = 0;


//   window.addEventListener("scroll", () => {
//     const currentScroll = window.pageYOffset;
//     if (currentScroll <= 0) {
//       body.classList.remove(scrollUp);
//       return;
//     }

//     if (currentScroll > lastScroll && !body.classList.contains(scrollDown)) {
//       // down
//       body.classList.remove(scrollUp);
//       body.classList.add(scrollDown);
//     } else if (currentScroll < lastScroll && body.classList.contains(scrollDown)) {
//       // up
//       body.classList.remove(scrollDown);
//       body.classList.add(scrollUp);
//     }
//     lastScroll = currentScroll;
//   });
// };

// export { navbarScroll };







// const navbarScroll = () => {
//   $(window).scroll(function () {
//     var $homeNav = $(".navbar-home");
//     var $banner = $(".banner");
//     $homeNav.toggleClass('scrolled', $(this).scrollTop() > $banner.height());
//   });


// };

// export { navbarScroll };

// Hide Header on on scroll down
// let didScroll;
// let lastScrollTop = 0;
// const delta = 5;
// let navbarHeight = $('header').outerHeight();

// $(window).scroll = (event) => {
//     didScroll = true;
// };

// const setInterval = (() => {
//     if (didScroll) {
//         hasScrolled();
//         didScroll = false;
//     }
// }, 250);

// const hasScrolled = () => {
//     let st = $(this).scrollTop();

//     // Make sure they scroll more than delta
//     if (Math.abs(lastScrollTop - st) <= delta)
//         return;

//     // If they scrolled down and are past the navbar, add class .nav-up.
//     // This is necessary so you never see what is "behind" the navbar.
//     if (st > lastScrollTop && st > navbarHeight) {
//         // Scroll Down
//         $('header').removeClass('navbar').addClass('nav-up');
//     } else {
//         // Scroll Up
//         if (st + $(window).height() < $(document).height()) {
//             $('header').removeClass('nav-up').addClass('navbar');
//         }
//     }
//     lastScrollTop = st;
// }

// export { hasScrolled };

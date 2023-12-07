// this is for main page

let attractiveImg= document.getElementById('attraction-img');
const ImglistPaths = ['assets/homepage/img1.jpg',
                    'assets/homepage/img2.jpg',
                    'assets/homepage/img3.jpg',
                    ]
let i =0;
setInterval(changeAttractImg, 5000);
function changeAttractImg(){
    attractiveImg.src= ImglistPaths[(i++)%ImglistPaths.length];
}

// carousel
let items = document.querySelectorAll('.carousel .carousel-item')
      items.forEach((el) => {
          const minPerSlide = 4
          let next = el.nextElementSibling
          for (var i=1; i<minPerSlide; i++) {
              if (!next) {
                  // wrap carousel by using first child
                next = items[0]
              }
              let cloneChild = next.cloneNode(true)
              el.appendChild(cloneChild.children[0])
              next = next.nextElementSibling
          }
      })

//

const hiddenElements = document.querySelectorAll('.hidden');

const observer = new IntersectionObserver((entries)=>{
    entries.forEach((entry) => {
        if(entry.isIntersecting){
            entry.target.classList.add("show");
        }
        else{
            entry.target.classList.remove("show")
        }
    });
});

hiddenElements.forEach((el)=> observer.observe(el) );
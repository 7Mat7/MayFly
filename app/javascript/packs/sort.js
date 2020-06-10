const size = document.getElementById('size')
const price = document.getElementById('price')
const available = document.getElementById('available')

const list = document.getElementById('list')

size.addEventListener('click', (e) => {
  const listedItemSize = document.querySelectorAll('.listed-place');
  const arrayFromNodeList = Array.from(listedItemSize);
  arrayFromNodeList.sort((a, b) => {
    return parseInt(a.dataset.size) - parseInt(b.dataset.size);
  })
  list.innerHTML = ''
  arrayFromNodeList.forEach(e => list.appendChild(e))
})

price.addEventListener('click', (e) => {
  const listedItemPrice = document.querySelectorAll('.listed-place');
  const arrayFromNodeList = Array.from(listedItemPrice);
  arrayFromNodeList.sort((a, b) => {
    return parseInt(a.dataset.price) - parseInt(b.dataset.price);
  })
  list.innerHTML = ''
  arrayFromNodeList.forEach(e => list.appendChild(e))
})

available.addEventListener('click', (e) => {
  const listedItemAvailable = document.querySelectorAll('.listed-place');
  const arrayFromNodeList = Array.from(listedItemAvailable);
  console.log(arrayFromNodeList);
  arrayFromNodeList.forEach((element) => {
    if (element.dataset.available == "false") {
      element.classList.toggle("unavailable-place");
    };
  });
})

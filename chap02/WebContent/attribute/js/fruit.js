const fruits = document.getElementsByClassName('fruit');
const pineapple = document.getElementById('pineapple');
const orange = document.getElementById('orange');
const mango = document.querySelector('#mango');

// 자바스크립트로 GET방식 요청을 보내주는 아주 기본적인 방법 (form을 만들지 않고 보낼 수 있음)
function moveToController(fruitName) {
	location.href = '/chap02/fruit/controller?fruit=' + fruitName;
}

Array.from(fruits).forEach((f) => {
	f.addEventListener('click', () => {
		moveToController(f.dataset.fruitName);
	});
});

/*pineapple.addEventListener('click', () => {
	moveToController('pineapple');
});

orange.addEventListener('click', () => {
	moveToController('orange');
});

mango.addEventListener('click', () => {
	moveToController('mango');
});*/

/*console.log('pineapple element\'s data-fruit-name: ', pineapple.dataset.fruitName);
console.log('pineapple element\'s data-fruit-price: ', pineapple.dataset.fruitPrice);*/
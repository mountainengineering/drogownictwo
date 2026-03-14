fetch("data/produkty.json")
.then(res=>res.json())
.then(dane=>{

let html=""

dane.forEach(p=>{

html+=`

<div class="produkt">

<h3>${p.nazwa}</h3>

<p>${p.cena} zł</p>

<button onclick="dodaj(${p.id},'${p.nazwa}',${p.cena})">
Dodaj do koszyka
</button>

</div>

`

})

document.getElementById("produkty").innerHTML=html

})

function dodaj(id,nazwa,cena){

let koszyk=JSON.parse(localStorage.getItem("koszyk")||"[]")

koszyk.push({id,nazwa,cena})

localStorage.setItem("koszyk",JSON.stringify(koszyk))

alert("Dodano do koszyka")

}
let koszyk=JSON.parse(localStorage.getItem("koszyk")||"[]")

let html=""

let suma=0

koszyk.forEach(p=>{

suma+=p.cena

html+=`
<div class="produkt">

<h3>${p.nazwa}</h3>
<p>${p.cena} zł</p>

</div>
`
})

html+=`<h2>Suma: ${suma} zł</h2>`

document.getElementById("koszyk").innerHTML=html
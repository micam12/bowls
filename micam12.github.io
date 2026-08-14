<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bowl Lab — Costos que rinden</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Fraunces:ital,wght@0,600;1,500;1,600&family=Inter:wght@400;500;600;700;800&family=Space+Mono:wght@400;700&display=swap" rel="stylesheet">
<style>
:root{
  --paper:#F3EAD3;
  --paper2:#EADFBE;
  --paper3:#F8F2E1;
  --ink:#2A2A1E;
  --ink-soft:#6b6a58;
  --olive:#57643C;
  --olive-deep:#37421F;
  --olive-soft:#93A06A;
  --olive-pale:#DCE2C6;
  --blue:#2B5170;
  --blue-deep:#1A3345;
  --blue-soft:#7FAFC7;
  --blue-pale:#D6E6ED;
  --terracotta:#C1683D;
  --lemon:#E3AC3B;
  --rust:#a8402a;
  --green-stamp:#3d6b34;
  --card:#FBF6E8;
  --shadow: 0 10px 26px rgba(26,51,69,0.13);
}
*{box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{
  margin:0;
  background:
    radial-gradient(circle at 8% 4%, rgba(43,81,112,0.05), transparent 40%),
    radial-gradient(circle at 92% 90%, rgba(87,100,60,0.07), transparent 40%),
    var(--paper);
  color:var(--ink);
  font-family:'Inter',sans-serif;
  font-size:15.5px;
  line-height:1.65;
  -webkit-font-smoothing:antialiased;
}
body::before{
  content:"";position:fixed;inset:0;pointer-events:none;opacity:.5;z-index:0;
  background-image:url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='140' height='140'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='2' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='0.05'/%3E%3C/svg%3E");
}
h1,h2,h3{margin:0;}
.eyebrow{font-family:'Space Mono',monospace;text-transform:uppercase;letter-spacing:.14em;font-size:11px;color:var(--olive-deep);}
.script{font-family:'Fraunces',serif;font-style:italic;font-weight:600;}
.mono{font-family:'Space Mono',monospace;}

.awning{height:22px;width:100%;background-repeat:repeat-x;background-size:44px 22px;position:relative;z-index:2;}
.awning.olive{background-image:radial-gradient(circle at 22px 0, transparent 20px, var(--olive) 21px);}
.awning.blue{background-image:radial-gradient(circle at 22px 0, transparent 20px, var(--blue) 21px);}
.awning.flip{transform:scaleY(-1);}

.wrap{max-width:1200px;margin:0 auto;padding:0 26px;}
header.top{position:sticky;top:0;z-index:50;background:var(--paper3);border-bottom:3px solid var(--olive-deep);}
.top-inner{display:flex;align-items:center;gap:22px;padding:16px 26px;max-width:1200px;margin:0 auto;}
.logo{display:flex;align-items:center;gap:10px;transform:rotate(-2deg);}
.logo .badge{background:var(--olive-deep);color:var(--paper3);font-family:'Archivo Black',sans-serif;font-size:13px;letter-spacing:.03em;padding:9px 13px;border-radius:3px;box-shadow:2px 3px 0 var(--terracotta);white-space:nowrap;}
.logo .sub{font-size:10.5px;color:var(--ink-soft);font-family:'Space Mono',monospace;}
nav.tabs{display:flex;gap:8px;overflow-x:auto;flex:1;scrollbar-width:none;}
nav.tabs::-webkit-scrollbar{display:none;}
nav.tabs button{font-family:'Space Mono',monospace;font-size:12px;border:2px solid var(--olive-deep);background:var(--paper);color:var(--olive-deep);padding:8px 15px;border-radius:20px;cursor:pointer;white-space:nowrap;transition:all .15s ease;}
nav.tabs button:hover{background:var(--olive-pale);}
nav.tabs button.active{background:var(--blue-deep);border-color:var(--blue-deep);color:#fff;}

.hero{position:relative;z-index:1;padding:64px 0 52px;overflow:hidden;}
.hero-grid{display:grid;grid-template-columns:1.3fr 1fr;gap:50px;align-items:center;}
.hero h1{font-family:'Archivo Black',sans-serif;font-size:clamp(36px,5.4vw,62px);line-height:1.02;color:var(--olive-deep);letter-spacing:-0.01em;}
.hero h1 span{display:inline-block;color:var(--blue);position:relative;}
.hero .tagline{margin-top:20px;font-size:16.5px;max-width:48ch;color:var(--ink-soft);}
.hero .tagline b{color:var(--ink);}
.postcard{background:var(--card);border:2px solid var(--olive-deep);border-radius:6px;padding:28px 26px;transform:rotate(2deg);box-shadow:var(--shadow);position:relative;}
.postcard::after{content:"";position:absolute;top:-10px;right:26px;width:60px;height:22px;background:rgba(227,172,59,.55);border:1px solid rgba(0,0,0,.06);transform:rotate(-6deg);}
.postcard .k{font-family:'Space Mono',monospace;font-size:11px;text-transform:uppercase;letter-spacing:.1em;color:var(--ink-soft);}
.postcard .bignum{font-family:'Archivo Black',sans-serif;font-size:42px;color:var(--blue-deep);margin:10px 0 4px;}
.postcard .foot{margin-top:16px;font-size:12.5px;color:var(--ink-soft);}
.postcard .gotobtn{margin-top:14px;font-family:'Space Mono',monospace;font-size:12px;font-weight:700;border:2px solid var(--blue-deep);background:var(--paper3);color:var(--blue-deep);padding:9px 16px;border-radius:20px;cursor:pointer;}
.postcard .gotobtn:hover{background:var(--blue-deep);color:#fff;}

main{position:relative;z-index:1;padding:50px 0 100px;}
section.panel{display:none;}
section.panel.active{display:block;animation:rise .35s ease;}
@keyframes rise{from{opacity:0;transform:translateY(8px);}to{opacity:1;transform:translateY(0);}}

.section-head{display:flex;align-items:baseline;gap:14px;margin:8px 0 34px;flex-wrap:wrap;}
.section-head .num{font-family:'Archivo Black',sans-serif;font-size:13px;background:var(--terracotta);color:#fff;padding:5px 10px;border-radius:3px;}
.section-head h2{font-family:'Archivo Black',sans-serif;font-size:27px;color:var(--olive-deep);}
.section-intro{max-width:64ch;color:var(--ink-soft);margin-bottom:26px;}

.card{background:var(--card);border:2px solid var(--olive-deep);border-radius:4px;box-shadow:var(--shadow);padding:34px 32px;position:relative;margin-bottom:34px;}
.card.tilt-l{transform:rotate(-.5deg);}
.card.tilt-r{transform:rotate(.5deg);}
.tape{position:absolute;top:-11px;width:64px;height:24px;background:rgba(214,230,237,.75);border:1px solid rgba(0,0,0,.05);box-shadow:0 1px 3px rgba(0,0,0,.12);}
.card h3{font-family:'Archivo Black',sans-serif;font-size:16.5px;color:var(--blue-deep);margin-bottom:20px;letter-spacing:.01em;}
.card h3 .script{color:var(--terracotta);font-size:15px;margin-left:8px;}

table.tbl{width:100%;border-collapse:collapse;font-family:'Space Mono',monospace;font-size:12.5px;}
table.tbl th{background:var(--olive-deep);color:var(--paper3);text-align:left;padding:12px 13px;font-weight:700;font-size:11px;text-transform:uppercase;letter-spacing:.04em;}
table.tbl td{padding:12px 13px;border-bottom:1px solid var(--paper2);vertical-align:middle;}
table.tbl tr:nth-child(even) td{background:rgba(147,160,106,.10);}
table.tbl input[type=number],table.tbl input[type=text],table.tbl input[type=date]{width:88px;font-family:'Space Mono',monospace;font-size:12.5px;border:none;border-bottom:2px solid var(--blue-soft);background:transparent;color:var(--ink);padding:4px 2px;}
table.tbl input[type=text]{width:120px;}
table.tbl input:focus{outline:none;border-color:var(--blue);}
.unit-suffix{font-size:10.5px;color:var(--ink-soft);margin-left:4px;}
.tag{display:inline-block;font-size:10px;font-family:'Space Mono',monospace;padding:3px 7px;border-radius:10px;}
.tag.veg{background:var(--olive-pale);color:var(--olive-deep);}
.tag.prot{background:var(--blue-pale);color:var(--blue-deep);}
.tag.cond{background:#f1ddb8;color:#7a5216;}
.tag.other{background:#e8e0cf;color:#584f3c;}

.unit-toggle{display:inline-flex;border:2px solid var(--olive-deep);border-radius:14px;overflow:hidden;}
.unit-toggle button{font-family:'Space Mono',monospace;font-size:11px;font-weight:700;border:none;background:var(--paper3);color:var(--olive-deep);padding:5px 10px;cursor:pointer;}
.unit-toggle button.active{background:var(--olive-deep);color:#fff;}

.cost-cell{font-weight:700;color:var(--terracotta);}
.btn-rm{background:none;border:2px solid var(--rust);color:var(--rust);font-family:'Space Mono',monospace;font-size:11px;font-weight:700;border-radius:14px;padding:5px 10px;cursor:pointer;white-space:nowrap;}
.btn-rm:hover{background:var(--rust);color:#fff;}

.chip-row{display:flex;gap:10px;flex-wrap:wrap;margin-bottom:26px;}
.chip{font-family:'Space Mono',monospace;font-size:12.5px;font-weight:700;border:2px solid var(--olive-deep);color:var(--olive-deep);background:var(--paper3);padding:10px 18px;border-radius:22px;cursor:pointer;}
.chip.active{background:var(--olive-deep);color:#fff;}

.receipt-list{list-style:none;margin:0;padding:0;font-family:'Space Mono',monospace;font-size:13px;}
.receipt-list li{display:flex;justify-content:space-between;align-items:center;gap:10px;padding:9px 0;border-bottom:1px dashed rgba(42,42,30,.25);}
.receipt-list li .name{color:var(--ink);}
.receipt-list li .qty{color:var(--ink-soft);font-size:11.5px;margin-left:8px;}
.receipt-list li .cost{font-weight:700;color:var(--blue-deep);}
.receipt-list li .rm{background:none;border:none;color:var(--rust);font-size:16px;cursor:pointer;line-height:1;padding:2px 4px;}
.receipt-list li .rm:hover{opacity:.6;}
.receipt-list li.total{border-bottom:none;border-top:2px solid var(--ink);margin-top:10px;padding-top:14px;font-size:15px;}
.receipt-list li.total .cost{color:var(--terracotta);font-size:18px;}

.add-row{display:flex;gap:8px;margin-top:16px;flex-wrap:wrap;align-items:center;}
.add-row select{font-family:'Space Mono',monospace;font-size:12px;border:2px solid var(--olive-deep);border-radius:4px;padding:8px 10px;background:var(--paper3);color:var(--ink);flex:1;min-width:160px;}
.add-row input[type=number],.add-row input[type=text]{width:90px;font-family:'Space Mono',monospace;font-size:12px;border:2px solid var(--olive-deep);border-radius:4px;padding:8px 10px;background:var(--paper3);color:var(--ink);}
.add-row input[type=text]{width:170px;flex:1;min-width:140px;}
.add-row button{font-family:'Space Mono',monospace;font-size:12px;font-weight:700;border:2px solid var(--blue-deep);background:var(--blue-deep);color:#fff;padding:8px 16px;border-radius:4px;cursor:pointer;}
.add-row button:hover{opacity:.85;}

.grid-2{display:grid;grid-template-columns:1fr 1fr;gap:32px;}
.grid-3{display:grid;grid-template-columns:repeat(3,1fr);gap:20px;}
.grid-4{display:grid;grid-template-columns:repeat(4,1fr);gap:18px;}
@media(max-width:820px){.grid-2{grid-template-columns:1fr;}.grid-3{grid-template-columns:1fr;}.grid-4{grid-template-columns:1fr 1fr;}.hero-grid{grid-template-columns:1fr;}}

.jar-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;margin-bottom:30px;}
@media(max-width:700px){.jar-grid{grid-template-columns:repeat(2,1fr);}}
.jar{border:2px solid var(--olive-deep);border-radius:6px;background:var(--paper3);padding:18px 12px;text-align:center;cursor:pointer;transition:transform .12s ease;}
.jar:hover{transform:translateY(-3px);}
.jar.active{background:var(--olive-deep);}
.jar .dot{width:22px;height:22px;border-radius:50%;margin:0 auto 10px;}
.jar .jn{font-family:'Space Mono',monospace;font-size:11.5px;font-weight:700;color:var(--olive-deep);}
.jar.active .jn{color:#fff;}

.pkg-card{border:2px dashed var(--blue);border-radius:6px;padding:18px;background:var(--paper3);display:flex;flex-direction:column;gap:8px;}
.pkg-card .lbl{font-family:'Space Mono',monospace;font-size:11px;text-transform:uppercase;letter-spacing:.06em;color:var(--blue-deep);}
.pkg-card input{font-family:'Space Mono',monospace;font-size:17px;font-weight:700;color:var(--ink);border:none;border-bottom:2px solid var(--blue-soft);background:transparent;padding:4px 0;width:100%;}
.pkg-card input:focus{outline:none;border-color:var(--blue);}

.field{margin-bottom:22px;}
.field label{display:flex;justify-content:space-between;font-family:'Space Mono',monospace;font-size:12px;color:var(--ink-soft);margin-bottom:8px;}
.field label .val{color:var(--terracotta);font-weight:700;}
.field input[type=range]{width:100%;accent-color:var(--blue);}
.field input[type=number]{width:100%;font-family:'Space Mono',monospace;font-size:14px;border:2px solid var(--olive-deep);border-radius:4px;padding:9px 11px;background:var(--paper3);color:var(--ink);}

.ticket-wrap{position:relative;}
.ticket{background:#fffdf6;border:2px solid var(--ink);padding:30px 28px 34px;position:relative;box-shadow:var(--shadow);transform:rotate(1deg);}
.ticket::before{content:"";position:absolute;left:0;right:0;bottom:-9px;height:18px;background-image:linear-gradient(-45deg, #fffdf6 8px, transparent 0), linear-gradient(45deg, #fffdf6 8px, transparent 0);background-size:16px 18px; background-position:left bottom;background-repeat:repeat-x;}
.ticket .th{text-align:center;font-family:'Archivo Black',sans-serif;font-size:15px;letter-spacing:.05em;color:var(--olive-deep);border-bottom:2px dashed var(--ink);padding-bottom:14px;margin-bottom:16px;}
.ticket .row{display:flex;justify-content:space-between;font-family:'Space Mono',monospace;font-size:13px;padding:6px 0;}
.ticket .row.big{font-size:15px;font-weight:700;border-top:1px dashed rgba(0,0,0,.3);margin-top:8px;padding-top:12px;}
.ticket .row .v{font-weight:700;}
.ticket .final{text-align:center;margin:20px 0 8px;}
.ticket .final .lbl{font-family:'Space Mono',monospace;font-size:11px;text-transform:uppercase;letter-spacing:.1em;color:var(--ink-soft);}
.ticket .final .num{font-family:'Archivo Black',sans-serif;font-size:40px;color:var(--blue-deep);line-height:1.05;}
.stamp{position:absolute;font-family:'Archivo Black',sans-serif;border:4px solid;border-radius:50%;width:118px;height:118px;display:flex;align-items:center;justify-content:center;text-align:center;transform:rotate(-14deg);font-size:15px;letter-spacing:.02em;top:16px;right:-14px;opacity:.92;mix-blend-mode:multiply;}
.stamp.good{border-color:var(--green-stamp);color:var(--green-stamp);}
.stamp.bad{border-color:var(--rust);color:var(--rust);}
@media(max-width:520px){.stamp{width:92px;height:92px;font-size:12px;top:8px;right:-8px;}}

.bar-row{display:flex;align-items:center;gap:12px;margin-bottom:14px;font-family:'Space Mono',monospace;font-size:12px;}
.bar-row .lab{width:160px;flex-shrink:0;color:var(--ink-soft);}
.bar-track{flex:1;background:var(--paper2);border-radius:6px;height:16px;overflow:hidden;}
.bar-fill{height:100%;border-radius:6px 0 0 6px;}
.bar-row .num{width:110px;text-align:right;flex-shrink:0;font-weight:700;}

.stat-tile{background:var(--paper3);border:2px dashed var(--blue);border-radius:6px;padding:18px;text-align:center;}
.stat-tile .lbl{font-family:'Space Mono',monospace;font-size:11px;text-transform:uppercase;letter-spacing:.05em;color:var(--blue-deep);}
.stat-tile .val{font-family:'Archivo Black',sans-serif;font-size:24px;color:var(--olive-deep);margin-top:8px;}

footer{background:var(--olive-deep);color:var(--paper3);padding:34px 0 40px;position:relative;z-index:1;}
footer .wrap{font-size:12.5px;line-height:1.8;}
footer b{color:var(--lemon);}
footer .fhead{font-family:'Archivo Black',sans-serif;font-size:15px;margin-bottom:10px;color:#fff;}

.pill-note{display:inline-block;background:var(--blue-pale);color:var(--blue-deep);font-family:'Space Mono',monospace;font-size:11px;padding:5px 12px;border-radius:12px;margin-bottom:18px;}
</style>
</head>
<body>

<header class="top">
  <div class="top-inner">
    <div class="logo">
      <div class="badge">🫒 BOWL LAB</div>
      <div class="sub">costeo &amp; pricing · BSAS</div>
    </div>
    <nav class="tabs" id="tabs">
      <button data-tab="compras" class="active">01 · Compras</button>
      <button data-tab="recetas">02 · Recetas</button>
      <button data-tab="salsas">03 · Salsas</button>
      <button data-tab="packaging">04 · Packaging</button>
      <button data-tab="precios">05 · Precios</button>
      <button data-tab="ventas">06 · Ventas</button>
      <button data-tab="panorama">07 · Panorama</button>
    </nav>
    <div style="display:flex;align-items:center;gap:10px;flex-shrink:0;">
      <span id="saveIndicator" class="mono" style="font-size:11px;color:var(--olive-soft);min-width:150px;text-align:right;"></span>
      <button id="clearDataBtn" class="btn-rm" style="flex-shrink:0;" title="Borrar todos los datos guardados">Borrar datos</button>
    </div>
  </div>
  <div class="awning olive"></div>
</header>

<section class="hero">
  <div class="wrap hero-grid">
    <div>
      <p class="eyebrow">emprendimiento gastronómico · bowls saludables</p>
      <h1>COSTOS<br>QUE <span>RINDEN</span> ☀︎</h1>
      <p class="tagline">Un <b>bowl</b> por vez: elegí ingredientes, recetas y salsa, y mirá cómo se mueve el precio al local y al consumidor <b>en tiempo real</b>. Nada de números a ojo — todo calculado.</p>
    </div>
    <div class="postcard">
      <div class="k">Costo actual — Bowl Base</div>
      <div class="bignum" id="heroCost">$0</div>
      <div class="foot">Ingredientes + salsa + packaging, con los precios y cantidades que cargaste. Cambiá cualquier valor en Compras y esto se mueve solo.</div>
      <button class="gotobtn" id="heroGoto">Ver ticket completo →</button>
    </div>
  </div>
</section>

<main class="wrap">

  <section class="panel active" id="panel-compras">
    <div class="section-head">
      <span class="num">01</span>
      <h2>Compras <span class="script">— la lista maestra</span></h2>
    </div>
    <p class="section-intro">Para cada ingrediente elegí si lo medís por <b>gramo</b> o por <b>unidad</b>, cargá el precio y cuánto usás en el Bowl Base. La cantidad del Bowl Base es la misma que ves en Recetas — editar acá o allá es lo mismo. Podés sacar cualquier ingrediente con la ✕, o sumar uno nuevo desde el formulario de abajo.</p>
    <div class="card tilt-l">
      <div class="tape" style="left:36px;"></div>
      <h3>Insumos</h3>
      <div style="overflow-x:auto;">
        <table class="tbl" id="tblCompras">
          <thead><tr>
            <th>Ingrediente</th><th>Categoría</th><th>Medida</th><th>Precio</th><th>Cant. en el Bowl Base</th><th>Costo en el bowl</th><th></th>
          </tr></thead>
          <tbody></tbody>
        </table>
      </div>
      <div class="add-row">
        <input type="text" id="ingAddName" placeholder="nombre del ingrediente nuevo">
        <select id="ingAddCat">
          <option value="veg">Verdura</option>
          <option value="prot">Proteína</option>
          <option value="cond">Condimento</option>
          <option value="other">Otro</option>
        </select>
        <button id="ingAddBtn">+ Agregar ingrediente</button>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-recetas">
    <div class="section-head">
      <span class="num">02</span>
      <h2>Recetas <span class="script">— tres versiones del bowl</span></h2>
    </div>
    <div class="chip-row" id="recipeChips">
      <button class="chip active" data-r="base">Bowl Base (Invierno)</button>
      <button class="chip" data-r="verano">Bowl Verano</button>
      <button class="chip" data-r="invierno">Bowl Invierno (más raíces)</button>
    </div>
    <div class="grid-2">
      <div class="card tilt-r">
        <div class="tape" style="right:40px;"></div>
        <h3>Composición <span class="script" id="recipeName"></span></h3>
        <ul class="receipt-list" id="recipeList"></ul>
        <div class="add-row">
          <select id="recipeAddSelect"></select>
          <input type="number" id="recipeAddQty" placeholder="cant." value="10">
          <button id="recipeAddBtn">+ Agregar</button>
        </div>
      </div>
      <div class="card tilt-l">
        <div class="tape" style="left:40px;"></div>
        <h3>Estabilidad de costo entre recetas</h3>
        <p style="color:var(--ink-soft);font-size:13px;margin-bottom:18px;">La idea de cambiar ingredientes por estación es que el costo se mantenga parecido. Así están hoy:</p>
        <div id="recipeCompare"></div>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-salsas">
    <div class="section-head">
      <span class="num">03</span>
      <h2>Salsas <span class="script">— costo por dip de 55&nbsp;cc</span></h2>
    </div>
    <div class="jar-grid" id="jarGrid"></div>
    <div class="card tilt-r">
      <div class="tape" style="right:44px;"></div>
      <h3 id="sauceTitle">Salsa</h3>
      <div class="grid-2">
        <div>
          <ul class="receipt-list" id="sauceList"></ul>
          <div class="add-row">
            <select id="sauceAddSelect"></select>
            <input type="number" id="sauceAddQty" placeholder="cant." value="10">
            <button id="sauceAddBtn">+ Agregar</button>
          </div>
        </div>
        <div>
          <div class="pill-note">Lote de referencia: 1.000&nbsp;g/ml</div>
          <div class="ticket" style="transform:rotate(-1deg);padding:22px 22px 26px;">
            <div class="row"><span>Costo del lote</span><span class="v" id="sauceLote">$0</span></div>
            <div class="row"><span>Costo por litro</span><span class="v" id="sauceLitro">$0</span></div>
            <div class="row big"><span>Costo por dip (55cc)</span><span class="v" id="sauceDip">$0</span></div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-packaging">
    <div class="section-head">
      <span class="num">04</span>
      <h2>Packaging <span class="script">— lo que envuelve al bowl</span></h2>
    </div>
    <div class="grid-3" style="margin-bottom:26px;">
      <div class="pkg-card">
        <span class="lbl">Envase</span>
        <input type="number" id="pkgEnvase" value="300">
      </div>
      <div class="pkg-card">
        <span class="lbl">Tapa <span style="color:var(--terracotta)">·estimado</span></span>
        <input type="number" id="pkgTapa" value="180">
      </div>
      <div class="pkg-card">
        <span class="lbl">Pote del dip (55cc)</span>
        <input type="number" id="pkgDip" value="147">
      </div>
      <div class="pkg-card">
        <span class="lbl">Tenedor de bambú</span>
        <input type="number" id="pkgTenedor" value="50">
      </div>
    </div>
    <div class="card tilt-l">
      <div class="tape" style="left:36px;"></div>
      <h3>Etiqueta <span class="script">cálculo automático por área</span></h3>
      <div class="grid-2">
        <div>
          <div class="field"><label>Ancho (cm) <span class="val" id="lblAncho">9</span></label><input type="range" id="etAncho" min="3" max="15" step="0.5" value="9"></div>
          <div class="field"><label>Alto (cm) <span class="val" id="lblAlto">5</span></label><input type="range" id="etAlto" min="2" max="12" step="0.5" value="5"></div>
          <div class="field"><label>Costo de impresión ($/m²)</label><input type="number" id="etCosto" value="26000"></div>
        </div>
        <div class="ticket" style="transform:rotate(1deg);padding:22px 22px 26px;">
          <div class="row"><span>Área</span><span class="v" id="etArea">0 m²</span></div>
          <div class="row big"><span>Costo por etiqueta</span><span class="v" id="etTotal">$0</span></div>
          <div class="row" style="margin-top:10px;"><span style="color:var(--ink-soft);font-size:11.5px;">TOTAL PACKAGING / BOWL</span><span class="v" id="pkgTotal" style="color:var(--terracotta);font-size:16px;">$0</span></div>
        </div>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-precios">
    <div class="section-head">
      <span class="num">05</span>
      <h2>Precios <span class="script">— el corazón del negocio</span></h2>
    </div>
    <div class="grid-2">
      <div>
        <div class="card tilt-r">
          <div class="tape" style="right:36px;"></div>
          <h3>Parámetros</h3>
          <div class="field"><label>Margen mínimo aceptable <span class="val" id="vMargenMin">20%</span></label><input type="range" id="margenMin" min="0" max="0.6" step="0.01" value="0.20"></div>
          <div class="field"><label>Margen objetivo <span class="val" id="vMargenObj">35%</span></label><input type="range" id="margenObj" min="0" max="0.6" step="0.01" value="0.35"></div>
          <div class="field"><label>Markup del local <span class="val" id="vMarkupLocal">40%</span></label><input type="range" id="markupLocal" min="0" max="1" step="0.01" value="0.40"></div>
          <div class="field"><label>Precio de la competencia ($)</label><input type="number" id="precioComp" value="5000"></div>
        </div>
        <div class="card tilt-l">
          <div class="tape" style="left:36px;"></div>
          <h3>Gastos fijos mensuales</h3>
          <div class="grid-2" id="indirectosGrid" style="gap:14px;"></div>
          <div class="field" style="margin-top:10px;"><label>Bowls vendidos / mes (proyección) <span class="val" id="vVolumen">600</span></label><input type="range" id="volumenMensual" min="60" max="3000" step="10" value="600"></div>
        </div>
      </div>

      <div class="ticket-wrap">
        <div class="ticket">
          <div id="verdictStamp" class="stamp good">RENTABLE ✓</div>
          <div class="th">TICKET DE COSTEO — BOWL BASE</div>
          <div class="row"><span>Ingredientes + salsa</span><span class="v" id="tIngredientes">$0</span></div>
          <div class="row"><span>Packaging</span><span class="v" id="tPackaging">$0</span></div>
          <div class="row"><span>Costo indirecto / bowl</span><span class="v" id="tIndirecto">$0</span></div>
          <div class="row big"><span>COSTO REAL</span><span class="v" id="tCostoReal">$0</span></div>

          <div class="final">
            <div class="lbl">precio de venta al local</div>
            <div class="num" id="tPrecioLocal">$0</div>
          </div>
          <div class="row"><span>Precio mínimo rentable</span><span class="v" id="tPrecioMin">$0</span></div>
          <div class="row"><span>Precio final al consumidor</span><span class="v" id="tPrecioConsumidor">$0</span></div>
          <div class="row"><span>vs. competencia ($<span id="tCompVal">5.000</span>)</span><span class="v" id="tDiffComp">$0</span></div>
          <div class="row big"><span>Margen bruto / bowl</span><span class="v" id="tMargenBruto">$0</span></div>
          <div class="row"><span>Margen neto</span><span class="v" id="tMargenNeto">0%</span></div>
          <div class="row"><span>Rentabilidad (markup s/costo)</span><span class="v" id="tRentabilidad">0%</span></div>
        </div>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-ventas">
    <div class="section-head">
      <span class="num">06</span>
      <h2>Ventas <span class="script">— anotá cada venta</span></h2>
    </div>
    <p class="section-intro">Cargá cliente/local, fecha y cantidad. El precio se completa solo con el <b>precio de venta al local</b> que armaste en Precios (lo podés pisar si vendiste a otro valor), y la ganancia se calcula con el costo real actual.</p>

    <div class="grid-4" style="margin-bottom:26px;">
      <div class="stat-tile"><div class="lbl">Bowls vendidos</div><div class="val" id="vtBowls">0</div></div>
      <div class="stat-tile"><div class="lbl">Facturación total</div><div class="val" id="vtFact">$0</div></div>
      <div class="stat-tile"><div class="lbl">Ganancia total</div><div class="val" id="vtGan">$0</div></div>
      <div class="stat-tile"><div class="lbl">Ticket promedio</div><div class="val" id="vtProm">$0</div></div>
    </div>

    <div class="card tilt-l">
      <div class="tape" style="left:40px;"></div>
      <h3>Registro de ventas</h3>
      <div style="overflow-x:auto;">
        <table class="tbl" id="tblVentas">
          <thead><tr>
            <th>Cliente / Local</th><th>Fecha</th><th>Cantidad</th><th>Precio unitario</th><th>Facturación</th><th>Ganancia</th><th></th>
          </tr></thead>
          <tbody></tbody>
        </table>
      </div>
      <div class="add-row">
        <button id="ventaAddBtn">+ Nueva venta</button>
      </div>
    </div>
  </section>

  <section class="panel" id="panel-panorama">
    <div class="section-head">
      <span class="num">07</span>
      <h2>Panorama <span class="script">— punto de equilibrio &amp; estadísticas</span></h2>
    </div>
    <div class="grid-2">
      <div class="card tilt-r">
        <div class="tape" style="right:40px;"></div>
        <h3>Bowls necesarios para cubrir cada gasto fijo</h3>
        <div id="beBars"></div>
        <div class="ticket" style="margin-top:20px;transform:rotate(-1deg);padding:20px 22px 24px;">
          <div class="row big"><span>PUNTO DE EQUILIBRIO TOTAL</span><span class="v" id="peTotalBowls">0 bowls/mes</span></div>
          <div class="row"><span>Equivale a por día (26 días hábiles)</span><span class="v" id="peDaily">0 bowls/día</span></div>
        </div>
      </div>
      <div class="card tilt-l">
        <div class="tape" style="left:40px;"></div>
        <h3>Qué pesa más en el costo del bowl</h3>
        <div id="ingChart"></div>
      </div>
    </div>
  </section>

</main>

<div class="awning blue flip" style="max-width:1200px;margin:0 auto;"></div>
<footer>
  <div class="wrap">
    <div class="fhead">🍋 Nota de temporada</div>
    Los precios cargados son <b>estimaciones de referencia</b> para Buenos Aires, agosto 2026 — no tus costos reales de compra.
    Reemplazá los valores en <b>Compras</b>, <b>Packaging</b> y <b>Gastos fijos</b> con tus números reales para que el ticket final refleje tu negocio de verdad.
    Esta página guarda tus datos automáticamente en este navegador (no en la nube): si cerrás y volvés a abrirla en el mismo dispositivo y navegador, vas a encontrar todo tal como lo dejaste. Usá el botón "Borrar datos" del encabezado si querés reiniciar desde cero.
  </div>
</footer>

<script>
let ING = [
 {id:"P01",name:"Pollo (pechuga cruda)",cat:"prot",unit:"g",price:13194},
 {id:"P02",name:"Arroz (crudo, blanco)",cat:"other",unit:"g",price:1120},
 {id:"P03",name:"Garbanzos (secos)",cat:"other",unit:"g",price:1591},
 {id:"P04",name:"Lechuga",cat:"veg",unit:"g",price:3111},
 {id:"P05",name:"Zanahoria",cat:"veg",unit:"g",price:2111},
 {id:"P06",name:"Batata",cat:"veg",unit:"g",price:2824},
 {id:"P07",name:"Choclo (grano)",cat:"veg",unit:"g",price:1800},
 {id:"P08",name:"Tomate cherry",cat:"veg",unit:"u",price:40},
 {id:"P09",name:"Pepino (verano)",cat:"veg",unit:"g",price:3158},
 {id:"P10",name:"Rúcula (verano)",cat:"veg",unit:"g",price:6667},
 {id:"P11",name:"Tomate redondo (verano)",cat:"veg",unit:"g",price:4444},
 {id:"P12",name:"Cebolla morada (verano)",cat:"veg",unit:"g",price:2778},
 {id:"P13",name:"Mayonesa",cat:"cond",unit:"g",price:16600},
 {id:"P14",name:"Mostaza",cat:"cond",unit:"g",price:13100},
 {id:"P15",name:"Miel",cat:"cond",unit:"g",price:9000},
 {id:"P16",name:"Aceite (girasol/mezcla)",cat:"cond",unit:"g",price:4000},
 {id:"P17",name:"Vinagre de alcohol",cat:"cond",unit:"g",price:2000},
 {id:"P18",name:"Yogur natural",cat:"other",unit:"g",price:3500},
 {id:"P19",name:"Limón (jugo)",cat:"other",unit:"g",price:2500},
 {id:"P20",name:"Curry en polvo",cat:"cond",unit:"g",price:30000},
 {id:"P21",name:"Ajo",cat:"veg",unit:"g",price:25000},
 {id:"P22",name:"Queso parmesano rallado",cat:"other",unit:"g",price:18000},
 {id:"P23",name:"Leche",cat:"other",unit:"g",price:1800},
 {id:"P24",name:"Cebolla en polvo",cat:"cond",unit:"g",price:20000},
 {id:"P25",name:"Sal fina",cat:"cond",unit:"g",price:1000},
];
let ingCounter = 1;
const catLabel = {veg:"Verdura",prot:"Proteína",cond:"Condimento",other:"Otro"};

const RECIPE_META = {
  base:{label:"Bowl Base (Invierno)"},
  verano:{label:"Bowl Verano"},
  invierno:{label:"Bowl Invierno (más raíces)"},
};
const SAUCES_META = {
  mostazaMiel:{label:"Mostaza y miel",color:"#C68A2E"},
  caesar:{label:"Caesar",color:"#8B4513"},
  ranch:{label:"Ranch",color:"#6b7d4a"},
  yogurLimon:{label:"Yogur y limón",color:"#7FAFC7"},
  yogurCurry:{label:"Yogur y curry",color:"#E3AC3B"},
  vinagreta:{label:"Vinagreta",color:"#2B5170"},
};

const state = {
  recipe:"base",
  sauce:"yogurLimon",
  ing: Object.fromEntries(ING.map(i=>[i.id,{price:i.price, unit:i.unit}])),
  recipes:{
    base:[["P04",22.5],["P02",100],["P01",80],["P05",30],["P03",15],["P06",35],["P07",30],["P08",2.5]],
    verano:[["P04",15],["P10",15],["P02",100],["P01",80],["P05",20],["P03",15],["P09",30],["P11",25],["P12",12],["P08",2.5]],
    invierno:[["P04",20],["P02",100],["P01",80],["P05",35],["P03",15],["P06",45],["P07",25],["P08",1.8]],
  },
  sauces:{
    mostazaMiel:[["P14",350],["P15",300],["P16",250],["P19",100]],
    caesar:[["P13",500],["P22",150],["P21",20],["P19",80],["P16",200],["P23",50]],
    ranch:[["P18",600],["P13",200],["P23",100],["P24",20],["P21",20],["P25",5]],
    yogurLimon:[["P18",800],["P19",150],["P16",40],["P25",10]],
    yogurCurry:[["P18",850],["P20",30],["P19",80],["P15",40]],
    vinagreta:[["P16",500],["P17",300],["P14",100],["P15",90],["P25",10]],
  },
  ventas: [],
  lastCostoReal: 0,
  lastPrecioLocal: 0,
};

const STORAGE_KEY = "bowlLabState_v1";
let savedFieldsToApply = null;

function saveState(){
  try{
    const fields = {};
    ["pkgEnvase","pkgTapa","pkgDip","pkgTenedor","etAncho","etAlto","etCosto",
     "margenMin","margenObj","markupLocal","precioComp","volumenMensual"].forEach(id=>{
      const el = document.getElementById(id);
      if(el) fields[id] = el.value;
    });
    const indirectos = INDIRECTOS_DEF.map(([key])=>{
      const el = document.getElementById("ind_"+key);
      return [key, el ? (parseFloat(el.value)||0) : null];
    });
    const payload = { ING, ingCounter, state, fields, indirectos, savedAt: Date.now() };
    localStorage.setItem(STORAGE_KEY, JSON.stringify(payload));
    const ind = document.getElementById("saveIndicator");
    if(ind){
      ind.textContent = "Guardado ✓";
      clearTimeout(window.__saveIndTimeout);
      window.__saveIndTimeout = setTimeout(()=>{ ind.textContent = ""; }, 1400);
    }
  }catch(e){
    console.warn("No se pudo guardar el estado:", e);
  }
}

function loadState(){
  try{
    const raw = localStorage.getItem(STORAGE_KEY);
    if(!raw) return false;
    const data = JSON.parse(raw);
    if(Array.isArray(data.ING)) ING = data.ING;
    if(typeof data.ingCounter === "number") ingCounter = data.ingCounter;
    if(data.state){
      Object.keys(state).forEach(k=> delete state[k]);
      Object.assign(state, data.state);
    }
    if(Array.isArray(data.indirectos)){
      data.indirectos.forEach(([key,val])=>{
        if(val===null) return;
        const def = INDIRECTOS_DEF.find(d=> d[0]===key);
        if(def) def[2] = val;
      });
    }
    savedFieldsToApply = data.fields || null;
    return true;
  }catch(e){
    console.warn("No se pudo cargar el estado guardado:", e);
    return false;
  }
}

function clearSavedState(){
  if(!confirm("¿Borrar todos los datos guardados y volver a los valores originales?")) return;
  localStorage.removeItem(STORAGE_KEY);
  location.reload();
}

const fmt = n => "$"+Math.round(n).toLocaleString("es-AR");
const fmt2 = n => "$"+n.toLocaleString("es-AR",{minimumFractionDigits:2,maximumFractionDigits:2});
const byId = id => ING.find(i=>i.id===id);
const unitLabel = id => state.ing[id].unit==="g" ? "g" : "u";
const costPerBaseUnit = id => { const ing = state.ing[id]; return ing.unit==="g" ? ing.price/1000 : ing.price; };

function goToTab(tab){
  document.querySelectorAll("nav.tabs button").forEach(b=>b.classList.toggle("active", b.dataset.tab===tab));
  document.querySelectorAll("section.panel").forEach(p=>p.classList.toggle("active", p.id==="panel-"+tab));
  window.scrollTo({top:0,behavior:"smooth"});
}
document.getElementById("tabs").addEventListener("click", e=>{
  const btn = e.target.closest("button"); if(!btn) return;
  goToTab(btn.dataset.tab);
});
document.getElementById("heroGoto").addEventListener("click", ()=> goToTab("precios"));
document.getElementById("clearDataBtn").addEventListener("click", clearSavedState);

function findBaseItem(id){ return state.recipes.base.find(it=> it[0]===id); }
function setBaseQty(id, qty){
  const idx = state.recipes.base.findIndex(it=> it[0]===id);
  if(qty>0){
    if(idx>=0) state.recipes.base[idx][1] = qty;
    else state.recipes.base.push([id, qty]);
  } else {
    if(idx>=0) state.recipes.base.splice(idx,1);
  }
}

function removeIngredientEverywhere(id){
  ING = ING.filter(i=> i.id!==id);
  delete state.ing[id];
  Object.keys(state.recipes).forEach(key=>{
    state.recipes[key] = state.recipes[key].filter(it=> it[0]!==id);
  });
  Object.keys(state.sauces).forEach(key=>{
    state.sauces[key] = state.sauces[key].filter(it=> it[0]!==id);
  });
}

function addNewIngredient(name, cat){
  const id = "N"+(ingCounter++);
  ING.push({id, name, cat, unit:"g", price:0});
  state.ing[id] = {price:0, unit:"g"};
  return id;
}

function buildComprasTable(){
  const tbody = document.querySelector("#tblCompras tbody");
  tbody.innerHTML = "";
  ING.forEach(ing=>{
    const cur = state.ing[ing.id];
    const baseItem = findBaseItem(ing.id);
    const qty = baseItem ? baseItem[1] : 0;
    const tr = document.createElement("tr");
    tr.dataset.id = ing.id;
    tr.innerHTML = `
      <td>${ing.name}</td>
      <td><span class="tag ${ing.cat}">${catLabel[ing.cat]}</span></td>
      <td>
        <div class="unit-toggle" data-id="${ing.id}">
          <button data-u="g" class="${cur.unit==='g'?'active':''}">g</button>
          <button data-u="u" class="${cur.unit==='u'?'active':''}">u</button>
        </div>
      </td>
      <td>
        <input type="number" step="0.01" class="priceInput" data-id="${ing.id}" value="${cur.price}">
        <span class="unit-suffix priceSuffix">${cur.unit==='g'?'$/kg':'$/u'}</span>
      </td>
      <td>
        <input type="number" step="0.1" class="qtyInput" data-id="${ing.id}" value="${qty}">
        <span class="unit-suffix qtySuffix">${cur.unit==='g'?'g':'u'}</span>
      </td>
      <td class="cost-cell" id="cost_${ing.id}">${fmt2(qty*costPerBaseUnit(ing.id))}</td>
      <td><button class="btn-rm" data-id="${ing.id}">✕ Quitar</button></td>
    `;
    tbody.appendChild(tr);
  });

  tbody.querySelectorAll(".unit-toggle").forEach(tg=>{
    tg.addEventListener("click", e=>{
      const btn = e.target.closest("button"); if(!btn) return;
      state.ing[tg.dataset.id].unit = btn.dataset.u;
      buildComprasTable();
      recalcAll();
    });
  });
  tbody.querySelectorAll(".priceInput").forEach(inp=>{
    inp.addEventListener("input", ()=>{
      state.ing[inp.dataset.id].price = parseFloat(inp.value)||0;
      updateComprasRowCost(inp.dataset.id);
      recalcAll();
    });
  });
  tbody.querySelectorAll(".qtyInput").forEach(inp=>{
    inp.addEventListener("input", ()=>{
      setBaseQty(inp.dataset.id, parseFloat(inp.value)||0);
      updateComprasRowCost(inp.dataset.id);
      recalcAll();
    });
  });
  tbody.querySelectorAll(".btn-rm").forEach(btn=>{
    btn.addEventListener("click", ()=>{
      removeIngredientEverywhere(btn.dataset.id);
      buildComprasTable();
      recalcAll();
    });
  });
}
function updateComprasRowCost(id){
  const cell = document.getElementById("cost_"+id);
  if(!cell) return;
  const baseItem = findBaseItem(id);
  const qty = baseItem ? baseItem[1] : 0;
  cell.textContent = fmt2(qty*costPerBaseUnit(id));
}
document.getElementById("ingAddBtn").addEventListener("click", ()=>{
  const nameInp = document.getElementById("ingAddName");
  const name = nameInp.value.trim();
  if(!name) return;
  const cat = document.getElementById("ingAddCat").value;
  addNewIngredient(name, cat);
  nameInp.value = "";
  buildComprasTable();
  recalcAll();
});

document.getElementById("recipeChips").addEventListener("click", e=>{
  const btn = e.target.closest("button"); if(!btn) return;
  document.querySelectorAll("#recipeChips .chip").forEach(b=>b.classList.remove("active"));
  btn.classList.add("active");
  state.recipe = btn.dataset.r;
  recalcAll();
});

function recipeIngredientCost(key){
  return state.recipes[key].reduce((sum,[id,qty])=> sum + qty*costPerBaseUnit(id), 0);
}
function sauceDipCost(key){
  const items = state.sauces[key];
  const total = items.reduce((sum,[id,qty])=> sum + qty*costPerBaseUnit(id), 0);
  return {total, perMl: total/1000, perDip: total/1000*55};
}
function fillAddSelect(select, excludeIds){
  select.innerHTML = "";
  ING.filter(i=> !excludeIds.includes(i.id)).forEach(i=>{
    const opt = document.createElement("option");
    opt.value = i.id; opt.textContent = i.name;
    select.appendChild(opt);
  });
}

function renderRecetas(){
  const items = state.recipes[state.recipe];
  document.getElementById("recipeName").textContent = "— "+RECIPE_META[state.recipe].label;
  const ul = document.getElementById("recipeList");
  ul.innerHTML = "";
  let total = 0;
  items.forEach(([id,qty])=>{
    const ing = byId(id); if(!ing) return;
    const cost = qty*costPerBaseUnit(id);
    total += cost;
    const li = document.createElement("li");
    li.innerHTML = `<span class="name">${ing.name}<span class="qty">${qty}${unitLabel(id)}</span></span><span style="display:flex;align-items:center;gap:8px;"><span class="cost">${fmt2(cost)}</span><button class="rm" data-id="${id}" title="Quitar">✕</button></span>`;
    ul.appendChild(li);
  });
  const dip = sauceDipCost(state.sauce);
  total += dip.perDip;
  const liS = document.createElement("li");
  liS.innerHTML = `<span class="name">Salsa: ${SAUCES_META[state.sauce].label}<span class="qty">55cc</span></span><span class="cost">${fmt2(dip.perDip)}</span>`;
  ul.appendChild(liS);
  const liT = document.createElement("li");
  liT.className = "total";
  liT.innerHTML = `<span class="name">COSTO INGREDIENTES + SALSA</span><span class="cost">${fmt2(total)}</span>`;
  ul.appendChild(liT);

  ul.querySelectorAll(".rm").forEach(btn=>{
    btn.addEventListener("click", ()=>{
      const idx = state.recipes[state.recipe].findIndex(it=> it[0]===btn.dataset.id);
      if(idx>=0) state.recipes[state.recipe].splice(idx,1);
      recalcAll();
    });
  });
  fillAddSelect(document.getElementById("recipeAddSelect"), items.map(it=>it[0]));

  const cmp = document.getElementById("recipeCompare");
  cmp.innerHTML = "";
  const baseCost = recipeIngredientCost("base") + sauceDipCost(state.sauce).perDip;
  Object.keys(state.recipes).forEach(key=>{
    const c = recipeIngredientCost(key) + sauceDipCost(state.sauce).perDip;
    const diff = c - baseCost;
    const pct = baseCost? (diff/baseCost*100):0;
    const row = document.createElement("div");
    row.style.fontFamily="'Space Mono',monospace";
    row.style.fontSize="13px";
    row.style.display="flex";
    row.style.justifyContent="space-between";
    row.style.padding="9px 0";
    row.style.borderBottom="1px dashed rgba(42,42,30,.25)";
    row.innerHTML = `<span>${RECIPE_META[key].label}${key===state.recipe? ' ◂':''}</span><span><b>${fmt2(c)}</b> <span style="color:${diff===0?'var(--ink-soft)':(diff>0?'var(--rust)':'var(--green-stamp)')}">(${diff>=0?'+':''}${pct.toFixed(1)}%)</span></span>`;
    cmp.appendChild(row);
  });

  return total;
}
document.getElementById("recipeAddBtn").addEventListener("click", ()=>{
  const sel = document.getElementById("recipeAddSelect");
  const qty = parseFloat(document.getElementById("recipeAddQty").value)||0;
  if(!sel.value || qty<=0) return;
  state.recipes[state.recipe].push([sel.value, qty]);
  recalcAll();
});

function buildJars(){
  const grid = document.getElementById("jarGrid");
  grid.innerHTML = "";
  Object.entries(SAUCES_META).forEach(([key,s])=>{
    const div = document.createElement("div");
    div.className = "jar"+(key===state.sauce?" active":"");
    div.dataset.key = key;
    div.innerHTML = `<div class="dot" style="background:${s.color}"></div><div class="jn">${s.label}</div>`;
    div.addEventListener("click", ()=>{
      state.sauce = key;
      buildJars();
      recalcAll();
    });
    grid.appendChild(div);
  });
}
function renderSalsa(){
  const items = state.sauces[state.sauce];
  document.getElementById("sauceTitle").innerHTML = SAUCES_META[state.sauce].label+' <span class="script">receta &amp; rendimiento</span>';
  const ul = document.getElementById("sauceList");
  ul.innerHTML = "";
  let total = 0;
  items.forEach(([id,qty])=>{
    const ing = byId(id); if(!ing) return;
    const cost = qty*costPerBaseUnit(id);
    total += cost;
    const li = document.createElement("li");
    li.innerHTML = `<span class="name">${ing.name}<span class="qty">${qty}${unitLabel(id)}</span></span><span style="display:flex;align-items:center;gap:8px;"><span class="cost">${fmt2(cost)}</span><button class="rm" data-id="${id}" title="Quitar">✕</button></span>`;
    ul.appendChild(li);
  });
  ul.querySelectorAll(".rm").forEach(btn=>{
    btn.addEventListener("click", ()=>{
      const idx = state.sauces[state.sauce].findIndex(it=> it[0]===btn.dataset.id);
      if(idx>=0) state.sauces[state.sauce].splice(idx,1);
      recalcAll();
    });
  });
  fillAddSelect(document.getElementById("sauceAddSelect"), items.map(it=>it[0]));

  document.getElementById("sauceLote").textContent = fmt2(total);
  document.getElementById("sauceLitro").textContent = fmt2(total);
  document.getElementById("sauceDip").textContent = fmt2(total/1000*55);
}
document.getElementById("sauceAddBtn").addEventListener("click", ()=>{
  const sel = document.getElementById("sauceAddSelect");
  const qty = parseFloat(document.getElementById("sauceAddQty").value)||0;
  if(!sel.value || qty<=0) return;
  state.sauces[state.sauce].push([sel.value, qty]);
  recalcAll();
});

function packagingTotal(){
  const envase = parseFloat(document.getElementById("pkgEnvase").value)||0;
  const tapa = parseFloat(document.getElementById("pkgTapa").value)||0;
  const dip = parseFloat(document.getElementById("pkgDip").value)||0;
  const tenedor = parseFloat(document.getElementById("pkgTenedor").value)||0;
  const ancho = parseFloat(document.getElementById("etAncho").value)||0;
  const alto = parseFloat(document.getElementById("etAlto").value)||0;
  const costoImp = parseFloat(document.getElementById("etCosto").value)||0;
  const area = (ancho*alto)/10000;
  const etiqueta = area*costoImp;

  document.getElementById("lblAncho").textContent = ancho;
  document.getElementById("lblAlto").textContent = alto;
  document.getElementById("etArea").textContent = area.toFixed(4)+" m²";
  document.getElementById("etTotal").textContent = fmt2(etiqueta);

  const total = envase+tapa+dip+tenedor+etiqueta;
  document.getElementById("pkgTotal").textContent = fmt2(total);
  return total;
}
["pkgEnvase","pkgTapa","pkgDip","pkgTenedor","etAncho","etAlto","etCosto"].forEach(id=>{
  document.getElementById(id).addEventListener("input", recalcAll);
});

const INDIRECTOS_DEF = [
  ["alquiler","Alquiler",150000],
  ["gas","Gas",25000],
  ["luz","Luz",35000],
  ["internet","Internet",15000],
  ["transporte","Transporte",60000],
  ["manoObra","Mano de obra",400000],
  ["otros","Otros",20000],
];
function buildIndirectos(){
  const grid = document.getElementById("indirectosGrid");
  grid.innerHTML = "";
  INDIRECTOS_DEF.forEach(([key,label,val])=>{
    const div = document.createElement("div");
    div.className = "pkg-card";
    div.innerHTML = `<span class="lbl">${label}</span><input type="number" id="ind_${key}" value="${val}">`;
    grid.appendChild(div);
  });
  grid.querySelectorAll("input").forEach(inp=> inp.addEventListener("input", recalcAll));
}
["margenMin","margenObj","markupLocal","precioComp","volumenMensual"].forEach(id=>{
  document.getElementById(id).addEventListener("input", recalcAll);
});
function indirectosTotal(){
  return INDIRECTOS_DEF.reduce((sum,[key])=> sum + (parseFloat(document.getElementById("ind_"+key).value)||0), 0);
}

function addVenta(){
  state.ventas.push({
    cliente:"",
    fecha:new Date().toISOString().slice(0,10),
    cantidad:1,
    precio: state.lastPrecioLocal || 0,
  });
  renderVentas();
}
document.getElementById("ventaAddBtn").addEventListener("click", addVenta);

function renderVentas(){
  const tbody = document.querySelector("#tblVentas tbody");
  tbody.innerHTML = "";
  let totalBowls=0, totalFact=0, totalGan=0;
  state.ventas.forEach((v,idx)=>{
    const fact = v.cantidad*v.precio;
    const gan = v.cantidad*(v.precio - state.lastCostoReal);
    totalBowls += v.cantidad; totalFact += fact; totalGan += gan;
    const tr = document.createElement("tr");
    tr.innerHTML = `
      <td><input type="text" data-f="cliente" data-i="${idx}" value="${v.cliente}" placeholder="nombre"></td>
      <td><input type="date" data-f="fecha" data-i="${idx}" value="${v.fecha}"></td>
      <td><input type="number" step="1" data-f="cantidad" data-i="${idx}" value="${v.cantidad}" style="width:60px;"></td>
      <td><input type="number" step="1" data-f="precio" data-i="${idx}" value="${Math.round(v.precio)}" style="width:90px;"></td>
      <td class="cost-cell">${fmt(fact)}</td>
      <td class="cost-cell" style="color:${gan>=0?'var(--green-stamp)':'var(--rust)'}">${fmt(gan)}</td>
      <td><button class="btn-rm" data-i="${idx}">✕</button></td>
    `;
    tbody.appendChild(tr);
  });

  tbody.querySelectorAll("input").forEach(inp=>{
    inp.addEventListener("input", ()=>{
      const i = parseInt(inp.dataset.i);
      const f = inp.dataset.f;
      state.ventas[i][f] = (f==="cliente"||f==="fecha") ? inp.value : (parseFloat(inp.value)||0);
      renderVentas();
    });
  });
  tbody.querySelectorAll(".btn-rm").forEach(btn=>{
    btn.addEventListener("click", ()=>{
      state.ventas.splice(parseInt(btn.dataset.i),1);
      renderVentas();
    });
  });

  document.getElementById("vtBowls").textContent = totalBowls;
  document.getElementById("vtFact").textContent = fmt(totalFact);
  document.getElementById("vtGan").textContent = fmt(totalGan);
  document.getElementById("vtProm").textContent = totalBowls? fmt(totalFact/totalBowls) : "$0";

  saveState();
}

function recalcAll(){
  const ingredientesCost = renderRecetas();
  renderSalsa();
  const pkgTotal = packagingTotal();
  buildJars_activeOnly();

  document.getElementById("heroCost").textContent = fmt(ingredientesCost + pkgTotal);

  const directCost = ingredientesCost + pkgTotal;

  const margenMin = parseFloat(document.getElementById("margenMin").value);
  const margenObj = parseFloat(document.getElementById("margenObj").value);
  const markupLocal = parseFloat(document.getElementById("markupLocal").value);
  const precioComp = parseFloat(document.getElementById("precioComp").value)||0;
  const volumen = parseFloat(document.getElementById("volumenMensual").value)||1;

  document.getElementById("vMargenMin").textContent = Math.round(margenMin*100)+"%";
  document.getElementById("vMargenObj").textContent = Math.round(margenObj*100)+"%";
  document.getElementById("vMarkupLocal").textContent = Math.round(markupLocal*100)+"%";
  document.getElementById("vVolumen").textContent = volumen;

  const totalIndirectos = indirectosTotal();
  const indirectoPorBowl = totalIndirectos/volumen;
  const costoReal = directCost + indirectoPorBowl;

  const precioMin = margenMin<1? costoReal/(1-margenMin) : costoReal;
  const precioLocal = margenObj<1? costoReal/(1-margenObj) : costoReal;
  const precioConsumidor = precioLocal*(1+markupLocal);
  const diffComp = precioConsumidor - precioComp;
  const margenBruto = precioLocal - costoReal;
  const margenNeto = precioLocal? margenBruto/precioLocal : 0;
  const rentabilidad = costoReal? margenBruto/costoReal : 0;

  state.lastCostoReal = costoReal;
  state.lastPrecioLocal = precioLocal;

  document.querySelector(".ticket .th").textContent = "TICKET DE COSTEO — "+RECIPE_META[state.recipe].label.toUpperCase();
  document.getElementById("tIngredientes").textContent = fmt2(ingredientesCost);
  document.getElementById("tPackaging").textContent = fmt2(pkgTotal);
  document.getElementById("tIndirecto").textContent = fmt2(indirectoPorBowl);
  document.getElementById("tCostoReal").textContent = fmt2(costoReal);
  document.getElementById("tPrecioLocal").textContent = fmt(precioLocal);
  document.getElementById("tPrecioMin").textContent = fmt2(precioMin);
  document.getElementById("tPrecioConsumidor").textContent = fmt2(precioConsumidor);
  document.getElementById("tCompVal").textContent = precioComp.toLocaleString("es-AR");
  document.getElementById("tDiffComp").textContent = (diffComp>=0?"+":"")+fmt2(diffComp);
  document.getElementById("tMargenBruto").textContent = fmt2(margenBruto);
  document.getElementById("tMargenNeto").textContent = (margenNeto*100).toFixed(1)+"%";
  document.getElementById("tRentabilidad").textContent = (rentabilidad*100).toFixed(1)+"%";

  const stamp = document.getElementById("verdictStamp");
  if(diffComp<=0 && margenNeto>=margenMin){
    stamp.className = "stamp good";
    stamp.textContent = "RENTABLE ✓";
  } else {
    stamp.className = "stamp bad";
    stamp.textContent = "REVISAR $";
  }

  renderVentas();

  const contribMargin = precioLocal - directCost;
  const beBars = document.getElementById("beBars");
  beBars.innerHTML = "";
  const maxVal = Math.max(...INDIRECTOS_DEF.map(([k])=> parseFloat(document.getElementById("ind_"+k).value)||0));
  const colors = ["#57643C","#2B5170","#C1683D","#93A06A","#7FAFC7","#E3AC3B","#8B4513"];
  INDIRECTOS_DEF.forEach(([key,label],i)=>{
    const val = parseFloat(document.getElementById("ind_"+key).value)||0;
    const bowlsNeeded = contribMargin>0? val/contribMargin : 0;
    const row = document.createElement("div");
    row.className = "bar-row";
    const pct = maxVal? (val/maxVal*100):0;
    row.innerHTML = `<div class="lab">${label}</div><div class="bar-track"><div class="bar-fill" style="width:${pct}%;background:${colors[i%colors.length]}"></div></div><div class="num">${bowlsNeeded.toFixed(0)} bowls</div>`;
    beBars.appendChild(row);
  });
  const totalBowlsBE = contribMargin>0? totalIndirectos/contribMargin : 0;
  document.getElementById("peTotalBowls").textContent = Math.round(totalBowlsBE)+" bowls/mes";
  document.getElementById("peDaily").textContent = (totalBowlsBE/26).toFixed(1)+" bowls/día";

  const chart = document.getElementById("ingChart");
  chart.innerHTML = "";
  const items = state.recipes[state.recipe].map(([id,qty])=>({name:byId(id)?byId(id).name:"?", cost:qty*costPerBaseUnit(id)}));
  items.push({name:"Salsa ("+SAUCES_META[state.sauce].label+")", cost: sauceDipCost(state.sauce).perDip});
  items.sort((a,b)=> b.cost-a.cost);
  const maxCost = items[0]?.cost || 1;
  items.forEach((it,i)=>{
    const row = document.createElement("div");
    row.className = "bar-row";
    const pct = it.cost/maxCost*100;
    row.innerHTML = `<div class="lab">${it.name}</div><div class="bar-track"><div class="bar-fill" style="width:${pct}%;background:${colors[i%colors.length]}"></div></div><div class="num">${fmt2(it.cost)}</div>`;
    chart.appendChild(row);
  });
}

function buildJars_activeOnly(){
  document.querySelectorAll(".jar").forEach(j=> j.classList.toggle("active", j.dataset.key===state.sauce));
}

const hadSavedData = loadState();
buildComprasTable();
buildJars();
buildIndirectos();
if(savedFieldsToApply){
  Object.entries(savedFieldsToApply).forEach(([id,val])=>{
    const el = document.getElementById(id);
    if(el) el.value = val;
  });
}
document.querySelectorAll("#recipeChips .chip").forEach(b=>{
  b.classList.toggle("active", b.dataset.r === state.recipe);
});
recalcAll();
if(hadSavedData){
  const ind = document.getElementById("saveIndicator");
  if(ind){
    ind.textContent = "Datos anteriores cargados";
    setTimeout(()=>{ ind.textContent = ""; }, 2200);
  }
}
</script>
</body>
</html>

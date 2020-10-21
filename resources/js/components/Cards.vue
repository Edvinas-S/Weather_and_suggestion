<template>
    <div class="container h-100">
        <div class="row align-middle">
            <div class="col-md-6 col-lg-4 column">
                <div class="card gr-1">
                    <div class="txt">
                        <h1>HAT</h1>
                        <p>17.65eur <img src="../../.././public/img/hat.png" alt="Hat"></p>
                    </div>
                    <a href="#">Buy</a>
                    <div class="ico-card">
                        <i class="fa fa-rebel"></i>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 column">
                <div class="card gr-2">
                    <div class="txt">
                        <h1>Rainpants</h1>
                        <p>77.66eur <img src="../../.././public/img/rainpants.png" alt="Rainpants"></p>
                    </div>
                    <a href="#">Buy</a>
                    <div class="ico-card">
                        <i class="fa fa-codepen"></i>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 column">
                <div class="card gr-3">
                    <div class="txt">
                        <h1>Umbrela</h1>
                        <p>19.99eur <img src="../../.././public/img/umrela.png" alt="Umrela"></p>
                    </div>
                    <a href="#">Buy</a>
                    <div class="ico-card">
                        <i class="fa fa-empire"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<style>
@import url('https://fonts.googleapis.com/css?family=Oswald:300,400,500,700');

@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800');

.gr-1{background: linear-gradient(170deg, #01E4F8 0%, #1D3EDE 100%);}
.gr-2{background: linear-gradient(170deg, #B4EC51 0%, #429321 100%);}
.gr-3{background: linear-gradient(170deg, #C86DD7 0%, #3023AE 100%);}

*{transition: .5s;}

.h-100{height: 100% !important;}

.align-middle{
  position: relative;
  top:50%;
}

.column{
  margin-top:3rem;
  padding-left:3rem;
}
  .column:hover {
    padding-left:0;
  }
    .card:hover, .txt:hover{
      margin-left:1rem;
    }
      h1:hover, p:hover{
        color:rgba(255,255,255,1);
        opacity:1;
      }
    a:hover{
      color:rgba(255,255,255,1);
    }
    a::after{
      width: 10%;
    }

.card{
  min-height:170px;
  margin: 0;
  padding: 1.7rem 1.2rem;
  border: none;
  border-radius: 2%;
  color:rgba(0,0,0,1);
  letter-spacing: .05rem;
  font-family: 'Oswald', sans-serif;
  box-shadow: 0 0 21px rgba(0,0,0,.27);
}
  .txt{
    margin-left:-3rem;
    z-index: 1;
  }
  h1{
    font-size:1.5rem;
    font-weight: 300;
    text-transform: uppercase;
  }
  p{
    font-size:.7rem;
    font-family: 'Open Sans', sans-serif;
    letter-spacing: 0rem;
    margin-top:33px;
    opacity:0;
    color:rgba(255,255,255,1);
  }

a{
  z-index:3;
  font-size: .7rem;
  color:rgba(0,0,0,1);
  margin-left:1rem;
  position:relative;
  bottom: -.5rem;
  text-transform: uppercase;
}

  a::after {
    content:"";
    display: inline-block;
    height: 0.5em;
    width: 0;
    margin-right: -100%;
    margin-left: 10px;
    border-top: 1px solid rgba(255,255,255,1);
    transition: .5s;
  }

  .ico-card {
    position:absolute;
    top: 0;
    left:0;
    bottom:0;
    right: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
  }

i {
  position: relative;
  right: -50%;
  top:60%;
  font-size: 48px;
  line-height: 0;
  opacity: .2;
  color:rgba(255,255,255,1);
  z-index: 0;
}

i::before {
  font-size: 130px;
}

</style>
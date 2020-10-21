<template>
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-8 mb-3">
                <div class="places-input container-fluid">
                    <input type="search" id="single-country-search" class="container-fluid" placeholder="Choose a city" />
                    <div>Selected: <strong id="single-country-address-value">none for now.. :)</strong></div>
                </div> <!-- end input -->
                <div class="container-fluid mt-3">
                    <div class="container h3">Current weather in {{ location.name }} <br><span class="mark"><a href="https://api.meteo.lt/" target="_blank" rel="noopener noreferrer">(*data comes from LHMT)</a></span></div>
                    <div class="container mt-3">
                        <div class="temperature">{{ currentTemperature.actual }}°C</div>
                        <img class="icon" :src="'icons/'+currentTemperature.summary+'.png'" alt="icon">
                    </div>
                </div> <!-- end weather -->
                <div>
                    <Cards/>
                </div><!-- end suggestions -->
            </div>
        </div>
    </div>
</template>

<script>
import Cards from './Cards.vue'

export default {
    name: 'Weather',
    components: {
        Cards
    },
    mounted() {
        this.fetchData()

        var placesAutocomplete = places({
            appId: 'plPS9O3LEBLU',
            apiKey: '1fa190c53ff8c6b4219e84892bbed141',
            container: document.querySelector('#single-country-search'),
            templates: {
            value: function(suggestion) {
                return suggestion.name;
                }
            }
        }).configure({
            countries: ['lt'],
        });
        var $address = document.querySelector('#single-country-address-value')
            placesAutocomplete.on('change', (e) => {
            $address.textContent = e.suggestion.value
            this.location.name = `${this.correctLithuanianLetters(e.suggestion.name)}`
        });
    },
    watch: {
        location: {
            handler(newValue, oldValue) {
                this.fetchData()
            },
            deep: true
        }
    },
    data() {
        return {
            currentTemperature: {
                actual: '',
                summary: '',
            },
            location: {
                name: 'Vilnius',
            }
        }
    },
    methods: {
        fetchData() {
            fetch(`https://cors-anywhere.herokuapp.com/https://api.meteo.lt/v1/places/${this.location.name}/forecasts/long-term`)
            // fetch(`/api/weather?city=${this.location.name}`)
            .then(response => response.json())
            .then(data => {
                this.currentTemperature.actual = Math.round(data.forecastTimestamps[0].airTemperature)
                this.currentTemperature.summary = data.forecastTimestamps[0].conditionCode
            })
        },
        correctLithuanianLetters (string) {
            const dictionary = {'Ą':'A','ą':'a','Č':'C','č':'c','Ę':'E','ę':'e','Ė':'E','ė':'e','Į':'I','į':'i','Š':'S','š':'s','Ų':'U','ų':'u','Ū':'U','ū':'u','Ž':'Z','ž':'z'};
            return string.replace(/[ĄąČčĘęĖėĮįŠšŲųŪūŽž]/g, match => dictionary[match]);
        },
    },
}
</script>
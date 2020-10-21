<template>
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-8">
                <div class="places-input container-fluid">
                    <input type="search" id="single-country-search" class="container-fluid" placeholder="Choose a city" />
                    <div>Selected: <strong id="single-country-address-value">none for now.. :)</strong></div>
                </div> <!-- end input -->
                <div class="">
                    <div class="header">Current weather in :city:</div>
                    <div class="body">
                        Labass
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
            // templates: {
            // value: function(suggestion) {
            //     return suggestion.name;
            //     }
            // }
        }).configure({
            countries: ['lt'],
        });
        var $address = document.querySelector('#single-country-address-value')
            placesAutocomplete.on('change', (e) => {
            $address.textContent = e.suggestion.value
            this.location.name = `${e.suggestion.name}, ${e.suggestion.country}`
        });
        placesAutocomplete.on('clear', function() {
            $address.textContent = 'none';
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
}
</script>
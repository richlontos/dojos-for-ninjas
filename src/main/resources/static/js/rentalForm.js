const RootComponent = {
    data() {
        return {
            header: "Listings looped through a reusable component card:",
            listings: [{
                listingID: "listing1",
                timeListed: "12 Jul 2021 12:35:00 GMT",
                price: 385000,
                bds: 2,
                ba: 1,
                sqft: 1458,
                seller: "owner",
                address: "150 Ash Street",
                city: "Manchester",
                state: "NH",
                zip: "03104",
                imgURL:
                    "https://cdn10.bostonmagazine.com/wp-content/uploads/sites/2/2017/06/frank-lloyd-wright-zimmerman-house-1.jpg"
            },
                {
                    listingID: "listing2",
                    timeListed: "28 May 2021 8:21:00 GMT",
                    price: 247000,
                    bds: 2,
                    ba: 3,
                    sqft: 1900,
                    seller: "realtor",
                    address: "120 North Ballas Road",
                    city: "Kirkwood",
                    state: "MO",
                    zip: "63122",
                    imgURL:
                        "https://www.stlouis.style/wp-content/uploads/2016/06/flwright-ebsworth-house-1.jpg"
                },
                {
                    listingID: "listing3",
                    timeListed: "21 Jul 2021 02:44:00 GMT",
                    price: 523000,
                    bds: 2,
                    ba: 3,
                    sqft: 1900,
                    seller: "owner",
                    address: "125 Jewett Pkwy",
                    city: "Buffalo",
                    state: "NY",
                    zip: "14214",
                    imgURL:
                        "https://stepoutbuffalo.com/wp-content/uploads/2020/01/darwinhouse.jpg"
                },
                {
                    listingID: "listing4",
                    timeListed: "1 Jul 2021 02:44:00 GMT",
                    price: 815000,
                    bds: 5,
                    ba: 6,
                    sqft: 5000,
                    seller: "owner",
                    address: "4800 Hollywood Boulevard",
                    city: "Los Angeles",
                    state: "CA",
                    zip: "90027",
                    imgURL:
                        "https://images.squarespace-cdn.com/content/v1/5f47fe9cfd0e5c5551097c51/1601125017550-3GMV74GF8WUS3X8O26KC/image-asset.png?format=2500w"
                },
                {
                    listingID: "listing5",
                    timeListed: "22 Jul 2021 12:35:00 GMT",
                    price: 153000,
                    bds: 2,
                    ba: 1.5,
                    sqft: 1692,
                    seller: "realtor",
                    address: "150 Ash Street",
                    city: "Manchester",
                    state: "NH",
                    zip: "03104",
                    imgURL:
                        "https://cdn10.bostonmagazine.com/wp-content/uploads/sites/2/2017/06/frank-lloyd-wright-zimmerman-house-1.jpg"
                },
                {
                    listingID: "listing6",
                    timeListed: "28 June 2021 8:21:00 GMT",
                    price: 319000,
                    bds: 3,
                    ba: 2.5,
                    sqft: 2340,
                    seller: "owner",
                    address: "120 North Ballas Road",
                    city: "Kirkwood",
                    state: "MO",
                    zip: "63122",
                    imgURL:
                        "https://www.stlouis.style/wp-content/uploads/2016/06/flwright-ebsworth-house-1.jpg"
                },],
        }
    },
}


const app = Vue.createApp(RootComponent)

app.component('zillow-card-component', {
    template: '#zcards',
    data(){
        return {
            notLoved: true,
            isLoved: false,
        }
    },
    props: ['listing'],
    methods: {
        addCommas(num){
            return num.toString().replace(/\B(?=(?:\d{3})+(?!\d))/g, ",")
        },
        calcTime(timestamp){
            let ms = Date.parse(timestamp)
            let time = Math.floor((new Date() - ms) / 86400000); //this many ms/day
            if (time >= 14) {
                time = Math.floor(time / 7);
                return time + " weeks ago";
            } else if (time < 1){
                return "Just now";
            } else if (time < 2){
                return "1 day ago";
            } else {
                return time + " days ago";
            }
        },
        wrapURL(url){
            return 'url("'+url+'")'
        },
    },
})

const vm = app.mount('#zillow')
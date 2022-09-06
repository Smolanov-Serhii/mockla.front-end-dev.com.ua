<template>
    <div>
        <label class="banner__button button-blue">

    <span class="btn" @click="toggleShow">{{text}}</span>
            <svg width="24" height="22" viewBox="0 0 24 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M22.1111 0.888916H1.8889C1.50581 0.888916 1.13841 1.0411 0.867526 1.31198C0.59664 1.58287 0.444458 1.95027 0.444458 2.33336V19.6667C0.444458 20.0498 0.59664 20.4172 0.867526 20.6881C1.13841 20.959 1.50581 21.1111 1.8889 21.1111H22.1111C22.4942 21.1111 22.8616 20.959 23.1325 20.6881C23.4034 20.4172 23.5556 20.0498 23.5556 19.6667V2.33336C23.5556 1.95027 23.4034 1.58287 23.1325 1.31198C22.8616 1.0411 22.4942 0.888916 22.1111 0.888916ZM5.44224 3.7778C5.87076 3.7778 6.28966 3.90488 6.64597 4.14295C7.00228 4.38103 7.27998 4.71942 7.44397 5.11532C7.60796 5.51123 7.65087 5.94688 7.56727 6.36717C7.48367 6.78746 7.27731 7.17352 6.9743 7.47654C6.67129 7.77955 6.28522 7.98591 5.86493 8.06951C5.44464 8.15311 5.009 8.1102 4.61309 7.94621C4.21718 7.78222 3.87879 7.50451 3.64072 7.14821C3.40264 6.7919 3.27557 6.373 3.27557 5.94447C3.27557 5.36984 3.50384 4.81874 3.91017 4.41241C4.3165 4.00608 4.8676 3.7778 5.44224 3.7778ZM3.33335 17.5V14.5389L7.66668 10.1478C7.802 10.0133 7.98505 9.93779 8.17585 9.93779C8.36665 9.93779 8.5497 10.0133 8.68501 10.1478L10.5556 11.975L5.0089 17.5H3.33335ZM20.6667 17.5H7.05279L11.5522 13.0006L15.4522 9.10058C15.5876 8.96607 15.7706 8.89057 15.9614 8.89057C16.1522 8.89057 16.3353 8.96607 16.4706 9.10058L20.6667 13.2967V17.5Z" fill="white"/>
            </svg>
        </label>
    <my-upload field="img"
               @crop-success="cropSuccess"
               @crop-upload-success="cropUploadSuccess"
               @crop-upload-fail="cropUploadFail"
               v-model="show"
               langType="en"
               :width="100"
               :height="100"
               url="/upload"
               :params="params"
               :headers="headers"
               img-format="png"></my-upload>
    <img :src="imgDataUrl">
    </div>
</template>

<style>
    .vue-image-crop-upload .vicp-wrap .vicp-step2 .vicp-crop .vicp-crop-left .vicp-img-container {
        height: 600px;
        width: 900px;
    }

    .vue-image-crop-upload .vicp-wrap {
        width: 1200px;
        height: 700px;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-close .vicp-icon4::after, .vue-image-crop-upload .vicp-wrap .vicp-close .vicp-icon4::before {
        top: 13px;
        left: 5px;
    }

    .vicp-icon4 {
        background-color: #2E3A87;
        border-radius: 50%;
    }

    .vicp-operate {
        display: grid;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-operate a {
        width: 230px;
    }

    .vicp-operate-btn {
        background: #2E3A87;
        border-radius: 50px !important;
        color: white !important;
        padding: 7px 23px !important;
        height: 50px !important;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-operate a.vicp-operate-btn:hover {
        background: #0f1d79 !important;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-operate a.vicp-operate-btn-close:hover {
        background: unset !important;
    }

    .vicp-operate-btn-close {
        color: #2E3A87 !important;
        text-decoration: underline;
    }

    .vicp-range {
        display: inline-block;
    }

    .vicp-rotate {
        display: inline-block;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-step2 .vicp-crop .vicp-crop-left .vicp-rotate {
        width: 62px !important;
        height: 7px !important;
    }

    .vue-image-crop-upload .vicp-wrap .vicp-step2 .vicp-crop .vicp-crop-left .vicp-img-container {
        background-color: #C2C6DC !important;
    }

    .vicp-crop-left {
        text-align: center;
    }

    .vicp-wrap {
        border-radius: 25px !important;
    }

    input[type=range]::-webkit-slider-runnable-track {
        background: #C2C6DC !important;
    }

    input[type=range]::-webkit-slider-thumb {
        background: white !important;
    }

</style>
<script>
    // import 'babel-polyfill'; // es6 shim
    import myUpload from 'vue-image-crop-upload';

    export default {
        props: ['text'],
        data() {
            return {
                show: false,
                params: {
                    token: '123456798',
                    name: 'avatar'
                },
                headers: {
                    smail: '*_~'
                },
                imgDataUrl: '' // the datebase64 url of created image
            }
        },
        components: {
            'my-upload': myUpload
        },
        methods: {
            toggleShow() {
                this.show = !this.show;
            },
            /**
             * crop success
             *
             * [param] imgDataUrl
             * [param] field
             */
            cropSuccess(imgDataUrl, field) {
                console.log('-------- crop success --------');
                this.imgDataUrl = imgDataUrl;
            },
            /**
             * upload success
             *
             * [param] jsonData  server api return data, already json encode
             * [param] field
             */
            cropUploadSuccess(jsonData, field) {
                console.log('-------- upload success --------');
                console.log(jsonData);
                console.log('field: ' + field);
            },
            /**
             * upload fail
             *
             * [param] status    server api return error status, like 500
             * [param] field
             */
            cropUploadFail(status, field) {
                console.log('-------- upload fail --------');
                console.log(status);
                console.log('field: ' + field);
            }
        }
    }
</script>

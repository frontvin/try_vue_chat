<template>
    <div id="SignUp">
        <div id="signCont">
            <h4>Login</h4>
            <input v-model="nickname" placeholder="Enter your nickname">
            <button v-on:click="signUp"> Let me in. </button>
        </div>
    </div>
</template>

<script>
export default {
    data() { return {
        nickname: ''}
        },
        methods: {
            signUp: function (){
                localStorage.setItem('nickname', this.nickname);
                if(this.nickname!==''){
                    this.$router.push('/chat');
                }
            }
        }
} 
</script>

<style>
    @import '../css/app.css';
</style>



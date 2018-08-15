<template>
    <div class="messages">
        <div class="messWrap" v-for="message in receivedMessages">
            <p>{{message}}</p>
        </div>
    </div>
</template>

<script>
export default {
    data() { return{
        
       }        
    },
    props: ['receivedMessages']
}
</script>

<style>

</style>

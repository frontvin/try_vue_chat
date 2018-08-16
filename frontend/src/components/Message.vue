<template>
    <div class="messages">

            <p class="messWrap" v-for="message in receivedMessages" :key="message.id">{{message}}</p>
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

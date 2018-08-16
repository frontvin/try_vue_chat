<template>
    <div class="messages">
        <div class="messWrap" v-for="message in receivedMessages" :key="message.id">
            <p>{{message.message}}</p>
            <p>{{message.nickname}}</p>
        </div>
        
    </div>
</template>

<script>
export default {
    data() { return{
        
       }        
    },
    props: ['receivedMessages'],
}
</script>

<style>

</style>

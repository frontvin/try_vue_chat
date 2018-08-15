<template>
    <div class="message">
        <p v-for="message in receivedMessages"> {{message}}</p>
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

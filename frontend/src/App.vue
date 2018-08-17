<template>
  <div id="authCont">
    <router-view></router-view>
  </div>
</template>

<script>
import io from 'socket.io-client';

// window.socket = io('http://172.30.0.2:8081')

export default {
  name: 'App',
}
</script>

<style>

</style>

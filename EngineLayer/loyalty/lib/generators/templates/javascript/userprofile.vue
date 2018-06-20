<template>
  <div id="userprofile">
    <div class="limiter">
        <div class="container container_detail">
            <div class="big_title_container">
                <div class="big_title">
                    ACCOUNT DETAIL
                </div>
            </div>

            <div class="row info_container">
              
                <div class="col-10 col-lg-8">
                    <div class="title">PERSONAL INFO</div>
                    <div class="row">
                        <div class="col-9 col-lg-4 info_rows">
                            <div> Email:</div>
                            <div> First name:</div>
                            <div> Last name:</div>
                            <div> Age:</div>
                            <div> Gender:</div>
                            <div> Country Code:</div>
                            <div> Loyalty account ID:</div>
                            <div> Country:</div>
                        </div>
                        <div class="col-3  col-lg-4 info_rows">
                            <div>{{ user.email }}</div>
                            <div> {{ user.last_name }}</div>
                            <div> {{ user.first_name }}</div>
                            <div> {{ user.age }}</div>
                            <div> {{ user.email }}</div>
                            <div> {{ user.country_code }}</div>
                            <div> {{ loyalty.id }}</div>
                            <div> {{ user.country_name }}</div>
                        </div>
                    </div>
                    <div class="title">ADDITION INFO</div>
                    <a class="info" href="#">Add a shipping address</a>
                    <div class="title">ADDITION INFO</div>
                    <div class="info"> You do not have any stored cards yet.</div>

                    <div class="title">ADDITION INFO</div>
                    <div class="info">You do not have any stored PayPal account yet.</div>
                </div>
            </div>
        </div>

    </div>
  </div>
</template>

<script>
export default {
  props: ['loyalty','user']
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>

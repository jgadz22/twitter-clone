<script setup>
import { Head, Link } from '@inertiajs/vue3';
import Tweet from '@/Components/Tweet.vue'
import TwitterLayout from '@/Layouts/TwitterLayout.vue';

defineProps({ tweets:Array })

</script>

<template>
    <Head title="Welcome" />

    <TwitterLayout>
        <div class="text-white">
            <div class="flex" v-for="tweet in tweets" :key="tweet">
                <Tweet :tweet="tweet"/>
                <!--
                    //Fake 
                    <Tweet :tweet="{
                    name: 'Joseph Gadiaza',
                    handle: '@josephgadiaza',
                    image: 'https://randomuser.me/api/portraits/men/40.jpg',
                    tweet: 'Top 10 NBA Plays of the week',
                    file: '/videos/NBA Top 10.mp4',
                    is_video: true,
                    comments: '35',
                    retweets: '54',
                    likes: '88',
                    analytics: '81',
                }"/> -->
            </div>
            <div class="border-b border-b-gray-800 mt-2"></div>
        </div>
    </TwitterLayout>

</template>


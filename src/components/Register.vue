<template>
  <div class="login w-full flex flex-wrap my-10">
    <!-- Login Section -->
    <div class="container mx-auto px-6">
      <div class="grid place-items-center items-start min-h-screen">
        <div class="flex flex-col justify-center md:w-5/12 lg:w-4/12">
          <p class="text-3xl font-bold">ลงทะเบียน</p>
          <form class="flex flex-col pt-3" onsubmit="event.preventDefault();">
            <div class="flex flex-col pt-4">
              <label for="email" class="text-lg">อีเมล/ชื่อผู้ใช้</label>
              <input
                type="email"
                id="email"
                placeholder="your@email.com"
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline"
              />
            </div>
            <div class="flex flex-col pt-4">
              <label for="password" class="text-lg">รหัสผ่าน</label>
              <input
                type="password"
                id="password"
                placeholder="Password"
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline"
              />
            </div>
            <div class="flex flex-col pt-4">
              <label for="confirmpassword" class="text-lg">ยืนยันรหัสผ่าน</label>
              <input
                type="password"
                id="confirmpassword"
                placeholder="Confirm Password"
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 mt-1 leading-tight focus:outline-none focus:shadow-outline"
              />
            </div>
            <button class="btn btn-primary mt-8">ลงทะเบียน</button>
          </form>
          <div class="text-center pt-12 pb-12">
            <!-- <p>
              Don't have an account?
              <a href="register.html" class="underline font-semibold"
                >Register here.</a
              >
            </p> -->
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

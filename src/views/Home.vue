<template>
  <div class="home">
    <!-- component -->
    <div class="w-full">
      <div class="flex max-h-screen md:h-screen">
        <div
          class="flex items-center text-center lg:text-left px-8 md:px-12 lg:w-1/2"
        >
          <div>
            <span class="text-2xl font-semibold text-gray-800 md:text-4xl"
              >Stud<span class="text-primary">art</span></span
            >
            <h1 class="py-5 text-5xl font-semibold text-gray-800 md:text-6xl">
              แหล่งรวมผลงานศิลปะของ<span class="text-primary"
                >นักเรียน/นักศึกษา</span
              >
            </h1>

            <p class="mt-2 text-sm text-black md:text-lg">
              แหล่งรวมผลงานศิลปะของ
              <strong>นักเรียน/นักศึกษา</strong>
              เพื่อสนับสนุนผู้มีความสามารถด้านศิลปะ
            </p>
            <div class="flex space-x-3 justify-center lg:justify-start mt-6">
              <button
                href="#"
                class="flex items-center justify-center border border-transparent text-base font-medium rounded-md  btn btn-secondary text-black"
              >
                ดูผลงาน
              </button>
              <router-link to="/addproduct">
                <button
                  href="#"
                  class="flex items-center justify-center border border-transparent text-base font-medium rounded-md  btn btn-secondary text-black"
                >
                  สร้างผลงาน
                </button>
              </router-link>
            </div>
          </div>
        </div>
        <div class="hidden lg:block lg:w-1/2">
          <div class="h-full ">
            <img
              class="w-full object-cover lg:w-full lg:h-full"
              src="../assets/images/painting_girl.png"
              alt="Painting Girl"
            />
          </div>
        </div>
      </div>
    </div>
    <!-- add more -->
    <div class="product-example mt-10 p-10">
      <div class="">
        <p class="text-2xl font-semibold text-gray-800 md:text-4xl">
          ตัวอย่างผลงาน
        </p>
      </div>
      <!--card product 1-->
      <div class=" container mx-auto mt-4">
        <div class="grid grid-cols-3">
          <div class=" flex justify-center items-center">
            <div
              class="w-80 rounded-md cursor-pointer shadow-lg overflow-hidden "
            >
              <img
                src="https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
                alt=""
              />
              <div class="p-4 ">
                <p class="mt-4 font-bold text-2xl">Planta Minimalista</p>
              </div>
            </div>
          </div>
          <!--2-->
          <div class=" flex justify-center items-center">
            <div
              class="w-80 rounded-md cursor-pointer shadow-lg overflow-hidden "
            >
              <img
                src="https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
                alt=""
              />
              <div class="p-4 ">
                <p class="mt-4 font-bold text-2xl">Planta Minimalista</p>
              </div>
            </div>
          </div>
          <!--3-->
          <div class=" flex justify-center items-center">
            <div
              class="w-80 rounded-md cursor-pointer shadow-lg overflow-hidden "
            >
              <img
                src="https://images.unsplash.com/photo-1463320898484-cdee8141c787?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
                alt=""
              />
              <div class="p-4 ">
                <p class="mt-4 font-bold text-2xl">Planta Minimalista</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <footer
      class="p-10 footer  text-base-content footer-center mt-10"
    >
      <div class="grid grid-flow-col gap-4">
        <a class="link link-hover">About us</a>
        <a class="link link-hover">Contact</a>
        <a class="link link-hover">Jobs</a>
        <a class="link link-hover">Press kit</a>
      </div>
      <div>
        <div class="grid grid-flow-col gap-4">
          <a>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              class="fill-current"
            >
              <path
                d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"
              ></path>
            </svg>
          </a>
          <a>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              class="fill-current"
            >
              <path
                d="M19.615 3.184c-3.604-.246-11.631-.245-15.23 0-3.897.266-4.356 2.62-4.385 8.816.029 6.185.484 8.549 4.385 8.816 3.6.245 11.626.246 15.23 0 3.897-.266 4.356-2.62 4.385-8.816-.029-6.185-.484-8.549-4.385-8.816zm-10.615 12.816v-8l8 3.993-8 4.007z"
              ></path>
            </svg>
          </a>
          <a>
            <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              class="fill-current"
            >
              <path
                d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"
              ></path>
            </svg>
          </a>
        </div>
      </div>
      <div>
        <p>Copyright © 2021 - All right reserved by ACME Industries Ltd</p>
      </div>
    </footer>
    
  </div>
</template>

<script>
export default {
  name: "Home",
};
</script>

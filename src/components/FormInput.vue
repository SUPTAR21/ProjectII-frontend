<template>
  <!--form input-->
  <div class="form-input" @submit.prevent="submit">
    <div class="grid place-items-center">
      <div class="w-full h-full px-10 py-2">
        <h1 class="text-xl font-semibold">
          สร้างผลงาน 👋
          <p class="font-normal inline-block w-full">
            กรุณากรอกข้อมูลของผลงานที่ต้องการขาย
          </p>
        </h1>
        <form class="mt-6">
          <div class="mt-1">
            <div class="my-2"></div>
            <label for="productname" class=""
              >ชื่อผลงาน <span class="text-error">*</span></label
            >
            <input
              id="productname"
              type="text"
              v-model="this.productInputValue.prodName"
              placeholder="ชื่อผลงาน"
              class="shadow appearance-none border border-black  rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              required
            />
          </div>

          <div class="flex justify-between">
            <div class="mt-1 w-6/12">
              <div class="my-2 ">
                <label for="price" class=""
                  >ราคา <span class="text-error">*</span></label
                >
              </div>
              <input
                id="price"
                type="number"
                step="0.01"
                v-model="this.productInputValue.price"
                placeholder="ราคา(บาท)"
                autocomplete="price"
                class="shadow appearance-none border border-black  rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                required
              />
            </div>
            <div class="mt-1 w-5/12">
              <div class="my-2 ">
                <label for="date" class=""
                  >วันที่สร้างผลงาน <span class="text-error">*</span></label
                >
              </div>
              <input
                id="date"
                type="date"
                placeholder="วันที่"
                v-model="this.productInputValue.manufacDate"
                class="shadow appearance-none border border-black  rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                required
              />
            </div>
          </div>

          <div class="mt-1">
            <div class="my-2 ">
              <label for="type" class=""
                >ประเภท <span class="text-error">*</span></label
              >
            </div>
            <select
              id="type"
              name="type"
              v-model="this.productInputValue.productType"
              class="shadow appearance-none border border-black  rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
              required
              ><option value="" hidden disabled selected
                >Please select one</option
              >
              <option value="1">Option 1</option>
              <option value="2">{ { table.productType2 }}</option>
            </select>
          </div>

          <div class="mt-1">
            <div class="my-2">
              <label for="product-description" class=""
                >รายละเอียด <span class="text-error">*</span></label
              >
            </div>
            <textarea
              id="product-description"
              v-model="this.productInputValue.prodDescription"
              placeholder="รายละเอียด เช่น ที่มา แรงบันดาลใจ"
              rows="3"
              class="shadow appearance-none border border-black  rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            />
          </div>
          <button
            type="submit"
            class="w-full py-3 mt-6 font-medium tracking-widest text-white uppercase bg-black shadow-lg focus:outline-none hover:bg-gray-900 hover:shadow-none"
          >
            สร้างผลงาน
          </button>
        </form>
      </div>
    </div>
    <div class="alert bg-success" v-show="sendSuccess">
      <div class="flex-1">
        <div
          class="alert-icon flex items-center bg-green-100 border-2 border-green-500 justify-center h-10 w-10 flex-shrink-0 rounded-full"
        >
          <span class="text-green-500">
            <svg fill="currentColor" viewBox="0 0 20 20" class="h-6 w-6">
              <path
                fill-rule="evenodd"
                d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                clip-rule="evenodd"
              ></path>
            </svg>
          </span>
        </div>
        <div class="alert-content ml-4">
          <div class="alert-title font-semibold text-lg text-green-800">
            สำเร็จ
          </div>
          <div class="alert-description text-sm text-green-600">
            เพิ่มข้อมูลเรียบร้อย..!
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  data() {
    return {
      productInputValue: {
        prodName: "",
        manufacDate: "",
        price: 0.0,
        prodDescription: "",
        productType: 1,
        styleID: [1, 2, 3],
      },
      checkValidate: {
        errorProdName: false,
        errorDate: false,
        errorPrice: false,
        errorProdDes: false,
        errorproductType: false,
      },
      sendSuccess: false,
    };
  },
  methods: {
    formValidate() {
      if (this.productInputValue.prodName === "") {
        this.checkValidate.errorProdName = true;
      } else {
        this.checkValidate.errorProdName = false;
      }
      if (this.productInputValue.manufacDate === "") {
        this.checkValidate.errorDate = true;
      } else {
        this.checkValidate.errorDate = false;
      }
      if (this.productInputValue.price === "") {
        this.checkValidate.errorPrice = true;
      } else {
        this.checkValidate.errorPrice = false;
      }
      if (this.productInputValue.prodDescription === "") {
        this.checkValidate.errorProdDes = true;
      } else {
        this.checkValidate.errorProdDes = false;
      }
      if (this.productInputValue.productType === "") {
        this.checkValidate.errorproductType = true;
      } else {
        this.checkValidate.errorproductType = false;
      }
    },
    submit() {
      this.formValidate();
      if (
        this.checkValidate.errorProdName ||
        this.checkValidate.errorDate ||
        this.checkValidate.errorPrice ||
        this.checkValidate.errorProdDes ||
        this.checkValidate.errorproductType
      ) {
        console.log("Input error");
      } else {
        this.$store.dispatch("addProduct", this.productInputValue);
        this.sendSuccess = true;
        // console.log("send form success", this.productInputValue);
      }
    },
  },
};
</script>

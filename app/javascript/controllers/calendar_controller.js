import { Controller } from "stimulus";
import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

export default class extends Controller {
  static targets = [ 'start', 'end' ]

  connect() {
    flatpickr(this.startTarget, {
      altInput: true,
      inline: true
    })
    flatpickr(this.endTarget, {
      altInput: true,
      inline: true
    })
  }
}

// const initFlatpickr = () => {
//   flatpickr("#range_start", {
//     altInput: true,
//     plugins: [new rangePlugin({ input: "#range_end"})]
//   });
// }

// export { initFlatpickr };

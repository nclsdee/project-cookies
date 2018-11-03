import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!


let startpicker = flatpickr('#start_date', {
    minDate: 'today',
    showAlways: false,
    theme: 'airbnb',
    altInput: true,
    altFormat: 'F j, Y',
    dateFormat: 'Z',
    weekNumbers: true,
    maxDate: $('#end_date').attr('value'),
    onClose: function(selectedDates, dateStr, instance) {
      var newDate = new Date(dateStr);
      var finalDay = new Date();
      finalDay.setDate(newDate.getDate() + 1);
      endpicker.set('minDate', finalDay);
    },
  });

  let endpicker = flatpickr('#end_date', {
    showAlways: false,
    theme: 'airbnb',
    altInput: true,
    altFormat: 'F j, Y',
    dateFormat: 'Z',
    weekNumbers: true,
    minDate: $('#start_date').attr('value'),
    onClose: function(selectedDates, dateStr, instance) {
      startpicker.set('maxDate', dateStr);
    },
  });

flatpickr(".datepicker", {})




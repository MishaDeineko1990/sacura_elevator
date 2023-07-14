
$(document).ready(function() {

  // Сховати та показати додаткові опції калькулятора
  // Hide the panel by default
  $('#panelContent').hide();

  // Toggle the panel visibility when the button is clicked
  $('#toggleButton').click(function() {
    $('#panelContent').toggle();
  });



  // Сховати та показати панельвибора типа редуктора
  // Initially hide the div with class "type_m_reductor"
  $(".type_m_reductor").hide();

  // Show/hide the div based on radio button selection
  $("input[name='exampleRadios']").change(function() {
    if ($(this).attr("id") === "exampleRadios1") {
      $(".type_m_reductor").hide();
    } else {
      $(".type_m_reductor").show();
    }
  });


});


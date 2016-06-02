function newItem(time, id) {
  var newField = "<div class='col-lg-12 new-item'>\
                  <input name='doc[sections_attributes][" + id + "][items_attributes][" + time + "][content]'\
                  class='form-control'\
                  placeholder='Item'\
                  id='doc_sections_attributes_" + id + "_items_attributes_" + time + "_content' />\
                  <div class='delete-item'>X</div>\
                  </div>";
  return newField;
}

function newSection(time) {
  var newDivSection = "<div class='section section'>\
                         <div class='form-group'>\
                           <div class='col-lg-12 new-section'>\
                             <input name='doc[sections_attributes][" + time + "][heading]'\
                             class='form-control section-heading'\
                             placeholder='Heading'\
                             id='doc_sections_attributes_" + time + "_heading' />\
                             <div class='delete-item'>X</div>\
                             <a class='btn new-item-button' href='#'>New Item</a>\
                           </div>\
                           <a class='btn new-section-button' href='#'>New Section</a>\
                          </div>\
                       </div>";
  return newDivSection;
}

document.addEventListener("turbolinks:load", function() {
  $('#doc-body').on({
    click: function(e) {
      e.preventDefault();
      var section = $(this).parent().find('input');
      var sectionId = section.attr('id');
      var secId = sectionId.split("_")[3];
      var thisTime = Date.now();
      $(this).before(newItem(thisTime, secId));
      $("#doc_sections_attributes_" + secId + "_items_attributes_" + thisTime + "_content").focus();
    }
  }, '.new-item-button');

  $('#doc-body').on({
    click: function(e) {
      e.preventDefault();
      //var thisTime = Date.now();
      var section = $(this).parent().find('input');
      var sectionId = section.attr('id');
      var secId = sectionId.split("_")[3];
      var newSec = parseInt(secId) + 1;
      // Add new section
      $(this).parent().parent().after(newSection(newSec));

      // Focus cursor on new section
      $("#doc_sections_attributes_" + newSec + "_heading").focus();

      // Rename/ReID any subsequent headings
      $(this).parent().parent().nextAll().each(function (i) {
        var modSection = $(this).find('input');
        var modSectionId = modSection.attr('id');
        var modSecId = modSectionId.split("_")[3];
        var newSecId = parseInt(modSecId) + 1;
        var newId = "doc_sections_attributes_" + newSecId + "_heading"
        var newName = "doc[sections_attributes][" + newSecId + "][heading]"
        modSection.attr("id", newId).attr("name", newName);
      });

    }
  }, '.new-section-button');
});
if (document.querySelector(".btn-add-tags") != null) {
  const displayTag = document.querySelector(".btn-add-tags");
  const tagItemDiv = document.querySelector(".tag-item");
  displayTag.addEventListener("click", (event) => {
    let tag = `<div class="tag-group form-group select optional chat_room_chat_room_tags_tag_id">
      <label class="select optional" for="chat_room_chat_room_tags_attributes_${document.querySelectorAll(".tag-group").length}_tag_id">
        Tag
      </label>
      <select class="form-control select optional select2" name="chat_room[chat_room_tags_attributes][${document.querySelectorAll(".tag-group").length}][tag_id]" id="chat_room_chat_room_tags_attributes_${document.querySelectorAll(".tag-group").length}_tag_id">
        <option value="1">
          informatique
        </option>
        <option value="2">
          cuisine
        </option>
        <option value="3">
          sport
        </option>
      </select>
    </div>`
    tagItemDiv.insertAdjacentHTML('beforeend', tag);
  })
}


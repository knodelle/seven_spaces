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
          Art
        </option>
        <option value="2">
          Littérature
        </option>
        <option value="3">
          Culture
        </option>
        <option value="4">
          Film
        </option>
        <option value="5">
          Alimentation
        </option>
        <option value="6">
          Jeux
        </option>
        <option value="7">
          Humour
        </option>
        <option value="8">
          Musique
        </option>
        <option value="9">
          Photo
        </option>
        <option value="10">
          Réseaux
        </option>
        <option value="11">
          Sport
        </option>
        <option value="12">
          Mode
        </option>
        <option value="13">
          Écriture
        </option>
        <option value="14">
          Business
        </option>
        <option value="15">
          Design
        </option>
        <option value="16">
          Economie
        </option>
        <option value="17">
          Freelance
        </option>
        <option value="18">
          Productivité
        </option>
        <option value="19">
          Startup
        </option>
        <option value="20">
          Accessibilité
        </option>
        <option value="21">
          Informatique
        </option>
        <option value="22">
          Science
        </option>
        <option value="23">
          Technologie
        </option>
        <option value="24">
          Nature
        </option>
         <option value="25">
          Addictions
        </option>
        <option value="26">
          Handicap
        </option>
        <option value="27">
          DIY
        </option>
        <option value="28">
          Santé
        </option>
        <option value="29">
          Style de vie
        </option>
        <option value="30">
          Santé mentale
        </option>
        <option value="31">
          Pleine conscience
        </option>
        <option value="32">
          Argent
        </option>
        <option value="33">
          Famille
        </option>
        <option value="34">
          Relations
        </option>
         <option value="35">
          Sexualité
        </option>
        <option value="36">
          Spiritualité
        </option>
        <option value="37">
          Neurodiversité
        </option>
        <option value="38">
          Environnement
        </option>
        <option value="39">
          Animaux
        </option>
        <option value="40">
          Egalité
        </option>
        <option value="41">
          Future
        </option>
        <option value="42">
          Histoire
        </option>
        <option value="43">
          LGBTQIA
        </option>
        <option value="44">
          Philosophie
        </option>
         <option value="45">
          Politique
        </option>
        <option value="46">
          Racisme
        </option>
        <option value="47">
          Religion
        </option>
        <option value="48">
          Société
        </option>
        <option value="49">
          Féminisme
        </option>
      </select>
    </div>`
    tagItemDiv.insertAdjacentHTML('beforeend', tag);
  })
}


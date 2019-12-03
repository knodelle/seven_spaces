const displayLinkOnActiveChatRoom = () => {
  const active_chat = document.querySelectorAll(".active");
  active_chat.addEventListener("click", (event) => {
      console.log(event.currentTarget);
      window.alert("Thank you!");
    });
  // active_chat.forEach(() => {});
};
export { displayLinkOnActiveChatRoom };

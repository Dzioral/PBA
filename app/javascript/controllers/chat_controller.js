import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'message', 'chat' ]

  connect() {
    this.scrollToBottom();
    this.messageTargets.forEach((message, index) => {
      this.setSender(message);
    })
  }

  messageTargetConnected(message) {
    this.scrollToBottom();
    this.setSender(message);
  }

  reset() {
    this.element.reset();
  }

  // Private
  scrollToBottom() {
    var element = document.getElementById('messages-container');
    element.scrollTop = element.scrollHeight;
  }

  setSender(message) {
    var className = this.messageSentByReceiver(message) ? 'sent' : 'received' ;
    message.classList.add(className);
  }

  messageSentByReceiver(message) {
    return message.getAttribute('data-sender') == this.chatTargets[0].getAttribute('data-receiver');
  }
}

class Message {

  constructor(message) {
    this.user = message.user;
    this.color = message.color;
    this.text = message.text;
    this.timestamp = message.timestamp;
  }

  get getMessageDate() {
    return this.timestamp ? this.getLocaleDate(this.timestamp) : this.getLocaleDate();
  }
  get getMessageTime() {
    return this.timestamp ? this.getLocaleTime(this.timestamp) : this.getLocaleTime();
  }
  get getMessageText() {
    return `${this.user} schrieb am ${this.getMessageDate} um ${this.getMessageTime} Uhr: ${this.text}`;
  }
  get getMessageTextAndColor() {
    return {text: this.getMessageText, color: this.color};
  }

  getLocaleDate(date = null) {
    return (new Date(date)).toLocaleDateString('de-DE');
  }
  getLocaleTime(date = null) {
    return (new Date(date)).toLocaleTimeString('de-DE');
  }

}

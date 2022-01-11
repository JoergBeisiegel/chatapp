chat.controller('chatCtrl', $scope => {

  const socket = io.connect();

  $scope.messages = [];
  $scope.users = null;

  $scope.selectedTab = 0;

  $scope.logIn = () => {
    $scope.selectedTab = 1;
  }


  $scope.addMessagesAndUsersToScope = (data) => {
    /*
      Erklärung für $scope.$apply:
      - http://jimhoskins.com/2012/12/17/angularjs-and-apply.html
     */

    $scope.$apply(() => {
      // Neues Message-Objekt wird erstellt und zum messages-Array hinzugefügt
      $scope.messages.push(new Message(data).getMessageTextAndColor);
      $scope.users = data.users.filter(el => el.user !== $scope.user);
    });
  };

  $scope.sendMessage = () => {
    $scope.timestamp = new Date();
    socket.emit('publicMessage', new Message($scope));
    $scope.text = '';
  };

  socket.on('publicMessage', data => {
    $scope.addMessagesAndUsersToScope(data);
  });

  $scope.getMessages = (limit = 50) => {
    socket.emit('getMessages', { limit });
  };

  socket.on('sendMessages', data => {
    $scope.$apply(() => {
      // messages-Array wird zurückgesetzt
      $scope.messages = [];
      // data-Array wird rückwärts sortiert (Älteste zuerst...)
      data.reverse().forEach(message => {
        // Neues Message-Objekt wird erstellt und zum messages-Array hinzugefügt
        $scope.messages.push(new Message(message).getMessageTextAndColor);
      });
    });
  });
});

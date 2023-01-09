class UserSavedAccount{
    String accessToken = '';
    DateTime expiredTime = DateTime.now();

    UserSavedAccount(this.accessToken, this.expiredTime);
}
BEGIN
    user_management_package.change_password(1, 'password123', 'newpasswordadam');
    user_management_package.update_user_data(2, 'bence_k_updated', 'bence_updated@example.com');
END;

package user

import (
	"errors"

	"golang.org/x/crypto/bcrypt"

)

type Service interface {
	RegisterUser(input RegisterUserInput) (User, error)
	Login(login LoginInput) (User, error)
}

type service struct {
	repository Repository
}

func NewService(repository Repository) *service {
	return &service{repository}
}

func (s *service) RegisterUser(input RegisterUserInput) (User, error) {

	passwordHash, err := bcrypt.GenerateFromPassword([]byte(input.Password), bcrypt.MinCost)

	user := User{
		Name:         input.Name,
		Email:        input.Email,
		PasswordHash: string(passwordHash),
		Role:         "user",
	}

	if err != nil {
		return user, err
	}

	newUser, err := s.repository.Save(user)
	// newUser, err := s.Save(user)

	if err != nil {
		return user, err
	}
	return newUser, nil

}

func (s *service) Login(input LoginInput) (User, error) {
	email := input.Email
	password := input.Password

	user, err := s.repository.FindByEmail(email)
	if err != nil {
		return user, err
	}

	if user.ID == 0 {
		return user, errors.New("user tidak ditemukan")
	}

	err = bcrypt.CompareHashAndPassword([]byte(user.PasswordHash), []byte(password))

	if err != nil {
		return user, err
	}

	return user, nil
}

// mapping struct input ke struct user
// simpan struct user melalui repository

package handler

import (
	"go-project/helper"
	"go-project/user"
	"net/http"

	"github.com/gin-gonic/gin"

)

type userHandler struct {
	userService user.Service
}

func NewUserHandler(userService user.Service) *userHandler {
	return &userHandler{userService}
}
func (h *userHandler) RegisterUser(c *gin.Context) {
	//tangkap input dari user
	//map input dari user ke struct RegisterUserInput
	//struct diatas kita passing sebagai parameter service
	var input user.RegisterUserInput
	err := c.ShouldBindJSON(&input)
	if err != nil {
		errors := helper.FormatValidationError(err)
		errorMessage := gin.H{"errors": errors}
		response := helper.APIResponse("Register Account Failed ", http.StatusUnprocessableEntity, "Error", errorMessage)
		c.JSON(http.StatusBadRequest, response)
		return
	}
	NewUser, err := h.userService.RegisterUser(input)
	if err != nil {
		response := helper.APIResponse("Register Account Failed ", http.StatusBadRequest, "Error", nil)
		c.JSON(http.StatusBadRequest, response)
		return
	}
	formatter := user.FormatUser(NewUser, "token")
	responseData := helper.APIResponse("Account Has been Registered ", http.StatusOK, "success", formatter)
	c.JSON(200, responseData)
}

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <stdio.h>
#include <iostream>

#include "Shader.h"

const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

const char *vertexShaderSource = "#version 330 core\n"
    "layout (location = 0) in vec3 aPos;\n"
    "layout (location = 1) in vec3 aColor;\n"
    "out vec3 vertexColor;\n"
    "void main()\n"
    "{\n"
    "   gl_Position = vec4(aPos, 1.0);\n"
    "   vertexColor = aColor;\n"
    "}\0";

const char *fragmentShaderSource = "#version 330 core\n"
"out vec4 FragColor;\n"
"in vec3 vertexColor;\n"
"void main()\n"
"{\n"
"    FragColor = vec4(vertexColor, 1.0);\n"
"} ";

void framebuffer_size_callback(GLFWwindow* window, int width, int height);  
void processInput(GLFWwindow *window);
void shaderStatus(unsigned int shader);

int main(){
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    #ifdef __APPLE__
        glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    #endif

    //create context window
    GLFWwindow* window = glfwCreateWindow(SCR_WIDTH,SCR_HEIGHT,"gltest", NULL, NULL);
    if(window == NULL){
        std::cout << "error creating window" << std::endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    //glad gl pointers
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }    

    Shader ourShader("/Users/vanlancker/Documents/code/gltest/src/shader.vs", "/Users/vanlancker/Documents/code/gltest/src/shader.fs");

    //vertex arr
    float vertices[] = {
        // positions         // colors
        0.5f, -0.5f, 0.0f,  1.0f, 0.0f, 0.0f,   // bottom right
        -0.5f, -0.5f, 0.0f,  0.0f, 1.0f, 0.0f,   // bottom left
        0.0f,  0.5f, 0.0f,  0.0f, 0.0f, 1.0f    // top 
    };

    unsigned int indices[] = { 
        0, 1, 2   // first triangle
    };  

    //vertex buffer, vertex array and element buffer -object
    unsigned int VBO, VAO, EBO;

    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);
    glGenBuffers(1,&EBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);

    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW); 

    //how to interpret vertex data
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *) (3* sizeof(float)));
    glEnableVertexAttribArray(1);

    glBindBuffer(GL_ARRAY_BUFFER, 0); 
    glBindVertexArray(0);

    while(!glfwWindowShouldClose(window))
    {
        //input
        processInput(window);

        //render
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        //draw triangle
        ourShader.use();
        ourShader.setFloat("ourColor", 1.0f);


        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, 9, GL_UNSIGNED_INT, 0);

        //glfw
        glfwSwapBuffers(window);
        glfwPollEvents();    
    }

    glDeleteVertexArrays(1, &VAO);
    glDeleteBuffers(1, &VBO);

    glfwTerminate();
    return 0;
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    glViewport(0, 0, width, height);
}  

void processInput(GLFWwindow *window)
{
    if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
    if(glfwGetKey(window, GLFW_KEY_1) == GLFW_PRESS){
        glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    }
    if(glfwGetKey(window, GLFW_KEY_2) == GLFW_PRESS){
        glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    }
}

void shaderStatus(unsigned int shader){
    GLint status;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &status);
    if(status != GL_TRUE){
        char buffer[512];
        glGetShaderInfoLog(shader,  512, NULL, buffer);
        std::cout << buffer << std::endl;
        exit(1);
    }
}